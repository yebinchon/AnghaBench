
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_features {int device_type; int type; int touch_max; int x_max; int x_fuzz; int y_max; int y_fuzz; int x_resolution; int y_resolution; int pktlen; } ;
struct wacom_wac {TYPE_2__* shared; struct wacom_features features; } ;
struct input_dev {int* evbit; int keybit; int swbit; int propbit; } ;
struct TYPE_4__ {int has_mute_touch_switch; TYPE_1__* touch; } ;
struct TYPE_3__ {int product; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_MT_WIDTH_MAJOR ;
 int ABS_MT_WIDTH_MINOR ;
 int ABS_X ;
 int ABS_Y ;



 int BIT_MASK (int ) ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOUCH ;
 int ENODEV ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_SW ;
 int HID_GENERIC ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_POINTER ;
 int INPUT_PROP_DIRECT ;
 int INPUT_PROP_POINTER ;
 int SW_MUTE_DEVICE ;





 int WACOM_DEVICETYPE_DIRECT ;
 int WACOM_DEVICETYPE_TOUCH ;
 int WACOM_PKGLEN_BBTOUCH3 ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int) ;
 int input_mt_init_slots (struct input_dev*,int,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int,int ) ;

int wacom_setup_touch_input_capabilities(struct input_dev *input_dev,
      struct wacom_wac *wacom_wac)
{
 struct wacom_features *features = &wacom_wac->features;

 input_dev->evbit[0] |= BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

 if (!(features->device_type & WACOM_DEVICETYPE_TOUCH))
  return -ENODEV;

 if (features->device_type & WACOM_DEVICETYPE_DIRECT)
  __set_bit(INPUT_PROP_DIRECT, input_dev->propbit);
 else
  __set_bit(INPUT_PROP_POINTER, input_dev->propbit);

 if (features->type == HID_GENERIC)

  return 0;

 __set_bit(BTN_TOUCH, input_dev->keybit);

 if (features->touch_max == 1) {
  input_set_abs_params(input_dev, ABS_X, 0,
   features->x_max, features->x_fuzz, 0);
  input_set_abs_params(input_dev, ABS_Y, 0,
   features->y_max, features->y_fuzz, 0);
  input_abs_set_res(input_dev, ABS_X,
      features->x_resolution);
  input_abs_set_res(input_dev, ABS_Y,
      features->y_resolution);
 }
 else if (features->touch_max > 1) {
  input_set_abs_params(input_dev, ABS_MT_POSITION_X, 0,
   features->x_max, features->x_fuzz, 0);
  input_set_abs_params(input_dev, ABS_MT_POSITION_Y, 0,
   features->y_max, features->y_fuzz, 0);
  input_abs_set_res(input_dev, ABS_MT_POSITION_X,
      features->x_resolution);
  input_abs_set_res(input_dev, ABS_MT_POSITION_Y,
      features->y_resolution);
 }

 switch (features->type) {
 case 139:
 case 140:
  input_dev->evbit[0] |= BIT_MASK(EV_SW);
  __set_bit(SW_MUTE_DEVICE, input_dev->swbit);

  if (wacom_wac->shared->touch->product == 0x361) {
   input_set_abs_params(input_dev, ABS_MT_POSITION_X,
          0, 12440, 4, 0);
   input_set_abs_params(input_dev, ABS_MT_POSITION_Y,
          0, 8640, 4, 0);
  }
  else if (wacom_wac->shared->touch->product == 0x360) {
   input_set_abs_params(input_dev, ABS_MT_POSITION_X,
          0, 8960, 4, 0);
   input_set_abs_params(input_dev, ABS_MT_POSITION_Y,
          0, 5920, 4, 0);
  }
  else if (wacom_wac->shared->touch->product == 0x393) {
   input_set_abs_params(input_dev, ABS_MT_POSITION_X,
          0, 6400, 4, 0);
   input_set_abs_params(input_dev, ABS_MT_POSITION_Y,
          0, 4000, 4, 0);
  }
  input_abs_set_res(input_dev, ABS_MT_POSITION_X, 40);
  input_abs_set_res(input_dev, ABS_MT_POSITION_Y, 40);



 case 145:
 case 144:
 case 137:
 case 138:
 case 143:
 case 136:
  input_set_abs_params(input_dev, ABS_MT_TOUCH_MAJOR, 0, features->x_max, 0, 0);
  input_set_abs_params(input_dev, ABS_MT_TOUCH_MINOR, 0, features->y_max, 0, 0);
  input_mt_init_slots(input_dev, features->touch_max, INPUT_MT_POINTER);
  break;

 case 129:
  input_set_abs_params(input_dev, ABS_MT_TOUCH_MAJOR, 0, features->x_max, 0, 0);
  input_set_abs_params(input_dev, ABS_MT_WIDTH_MAJOR, 0, features->x_max, 0, 0);
  input_set_abs_params(input_dev, ABS_MT_WIDTH_MINOR, 0, features->y_max, 0, 0);
  input_set_abs_params(input_dev, ABS_MT_ORIENTATION, 0, 1, 0, 0);


 case 128:
  if (wacom_wac->shared->touch->product == 0x32C ||
      wacom_wac->shared->touch->product == 0xF6) {
   input_dev->evbit[0] |= BIT_MASK(EV_SW);
   __set_bit(SW_MUTE_DEVICE, input_dev->swbit);
   wacom_wac->shared->has_mute_touch_switch = 1;
  }


 case 135:
 case 134:
 case 133:
 case 131:
  input_mt_init_slots(input_dev, features->touch_max, INPUT_MT_DIRECT);


 case 132:
 case 130:
  break;

 case 142:
 case 141:
  input_dev->evbit[0] |= BIT_MASK(EV_SW);
  __set_bit(SW_MUTE_DEVICE, input_dev->swbit);


 case 147:
 case 146:
  if (features->pktlen == WACOM_PKGLEN_BBTOUCH3) {
   input_set_abs_params(input_dev,
         ABS_MT_TOUCH_MAJOR,
         0, features->x_max, 0, 0);
   input_set_abs_params(input_dev,
         ABS_MT_TOUCH_MINOR,
         0, features->y_max, 0, 0);
  }
  input_mt_init_slots(input_dev, features->touch_max, INPUT_MT_POINTER);
  break;

 case 148:
  input_mt_init_slots(input_dev, features->touch_max,
        INPUT_MT_POINTER);
  __set_bit(BTN_LEFT, input_dev->keybit);
  __set_bit(BTN_RIGHT, input_dev->keybit);
  break;
 }
 return 0;
}
