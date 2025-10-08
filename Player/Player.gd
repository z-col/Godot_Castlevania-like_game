class_name Player extends CharacterBody2D

const SPEED: float = 300
const GRAVITY: float = 900

func _physics_process(_delta: float) -> void:
	velocity.x = 0
	if Input.is_action_pressed("left"):
		velocity.x = - SPEED
	elif Input.is_action_pressed("right"):
		velocity.x = SPEED
	velocity.y = velocity.y + GRAVITY * _delta
	move_and_slide()