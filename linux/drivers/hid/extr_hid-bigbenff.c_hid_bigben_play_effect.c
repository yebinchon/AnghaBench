
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int strong_magnitude; scalar_t__ weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {scalar_t__ type; TYPE_2__ u; } ;
struct bigben_device {void* right_motor_on; void* left_motor_force; int work_ff; int worker; } ;


 scalar_t__ FF_RUMBLE ;
 int schedule_work (int *) ;

__attribute__((used)) static int hid_bigben_play_effect(struct input_dev *dev, void *data,
    struct ff_effect *effect)
{
 struct bigben_device *bigben = data;
 u8 right_motor_on;
 u8 left_motor_force;

 if (effect->type != FF_RUMBLE)
  return 0;

 right_motor_on = effect->u.rumble.weak_magnitude ? 1 : 0;
 left_motor_force = effect->u.rumble.strong_magnitude / 256;

 if (right_motor_on != bigben->right_motor_on ||
   left_motor_force != bigben->left_motor_force) {
  bigben->right_motor_on = right_motor_on;
  bigben->left_motor_force = left_motor_force;
  bigben->work_ff = 1;
  schedule_work(&bigben->worker);
 }

 return 0;
}
