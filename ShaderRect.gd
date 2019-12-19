tool
extends ColorRect

export(Vector2) var rect_uv = Vector2(0, 0) setget set_rect_uv

func set_rect_uv(new_value : Vector2):
	rect_uv = new_value
	self.set_size(rect_uv)
	self.material.set_shader_param("RECT_UV", rect_uv)

func set_pointer_position(new_value : Vector2):
	self.material.set_shader_param("pointer", new_value)

func _input(event):
   if event is InputEventMouseMotion:
	   set_pointer_position(self.get_local_mouse_position())
