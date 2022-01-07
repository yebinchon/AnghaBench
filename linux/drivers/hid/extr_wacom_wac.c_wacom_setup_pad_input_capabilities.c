
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_features {int type; scalar_t__ numbered_buttons; int device_type; int oPid; } ;
struct wacom_wac {struct input_dev* pad_input; struct wacom_features features; } ;
struct input_dev {int* evbit; int keybit; int absbit; int propbit; TYPE_1__* absinfo; } ;
struct TYPE_2__ {scalar_t__ maximum; scalar_t__ minimum; } ;


 int ABS_MISC ;
 size_t ABS_RX ;
 size_t ABS_RY ;
 size_t ABS_THROTTLE ;
 size_t ABS_WHEEL ;
 size_t ABS_X ;
 size_t ABS_Y ;
 size_t ABS_Z ;


 int BIT_MASK (int ) ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_STYLUS ;





 int ENODEV ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_MSC ;
 int EV_REL ;


 int INPUT_PROP_ACCELEROMETER ;
 int KEY_BUTTONCONFIG ;
 int KEY_CONTROLPANEL ;
 int KEY_INFO ;
 int KEY_ONSCREEN_KEYBOARD ;
 int KEY_PROG1 ;
 int KEY_PROG2 ;
 int KEY_PROG3 ;
 int MSC_SERIAL ;
 int REL_WHEEL ;







 int WACOM_DEVICETYPE_PAD ;


 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,size_t,int) ;
 int input_set_abs_params (struct input_dev*,size_t,int,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int wacom_setup_numbered_buttons (struct input_dev*,scalar_t__) ;

int wacom_setup_pad_input_capabilities(struct input_dev *input_dev,
       struct wacom_wac *wacom_wac)
{
 struct wacom_features *features = &wacom_wac->features;

 if ((features->type == 155) && features->numbered_buttons > 0)
  features->device_type |= WACOM_DEVICETYPE_PAD;

 if (!(features->device_type & WACOM_DEVICETYPE_PAD))
  return -ENODEV;

 if (features->type == 136 && input_dev == wacom_wac->pad_input)
  return -ENODEV;

 input_dev->evbit[0] |= BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);


 __set_bit(ABS_MISC, input_dev->absbit);


 if (!(input_dev->absinfo && (input_dev->absinfo[ABS_X].minimum ||
       input_dev->absinfo[ABS_X].maximum)))
  input_set_abs_params(input_dev, ABS_X, 0, 1, 0, 0);
 if (!(input_dev->absinfo && (input_dev->absinfo[ABS_Y].minimum ||
       input_dev->absinfo[ABS_Y].maximum)))
  input_set_abs_params(input_dev, ABS_Y, 0, 1, 0, 0);


 __set_bit(BTN_STYLUS, input_dev->keybit);

 wacom_setup_numbered_buttons(input_dev, features->numbered_buttons);

 switch (features->type) {

 case 159:
 case 160:
 case 158:
 case 157:
 case 156:
  break;

 case 128:
  __set_bit(BTN_BACK, input_dev->keybit);
  __set_bit(BTN_LEFT, input_dev->keybit);
  __set_bit(BTN_FORWARD, input_dev->keybit);
  __set_bit(BTN_RIGHT, input_dev->keybit);
  input_set_abs_params(input_dev, ABS_WHEEL, 0, 71, 0, 0);
  break;

 case 129:
  __set_bit(BTN_BACK, input_dev->keybit);
  __set_bit(BTN_FORWARD, input_dev->keybit);
  input_set_capability(input_dev, EV_REL, REL_WHEEL);
  break;

 case 132:
  __set_bit(KEY_PROG1, input_dev->keybit);
  __set_bit(KEY_PROG2, input_dev->keybit);
  __set_bit(KEY_PROG3, input_dev->keybit);

  __set_bit(KEY_ONSCREEN_KEYBOARD, input_dev->keybit);
  __set_bit(KEY_INFO, input_dev->keybit);

  if (!features->oPid)
   __set_bit(KEY_BUTTONCONFIG, input_dev->keybit);

  input_set_abs_params(input_dev, ABS_WHEEL, 0, 71, 0, 0);
  input_set_abs_params(input_dev, ABS_THROTTLE, 0, 71, 0, 0);
  break;

 case 131:
  __set_bit(KEY_PROG1, input_dev->keybit);
  __set_bit(KEY_PROG2, input_dev->keybit);
  __set_bit(KEY_PROG3, input_dev->keybit);

  __set_bit(KEY_ONSCREEN_KEYBOARD, input_dev->keybit);
  __set_bit(KEY_BUTTONCONFIG, input_dev->keybit);

  if (!features->oPid)
   __set_bit(KEY_CONTROLPANEL, input_dev->keybit);
  input_set_abs_params(input_dev, ABS_X, -2048, 2048, 0, 0);
  input_abs_set_res(input_dev, ABS_X, 1024);
  input_set_abs_params(input_dev, ABS_Y, -2048, 2048, 0, 0);
  input_abs_set_res(input_dev, ABS_Y, 1024);
  input_set_abs_params(input_dev, ABS_Z, -2048, 2048, 0, 0);
  input_abs_set_res(input_dev, ABS_Z, 1024);
  __set_bit(INPUT_PROP_ACCELEROMETER, input_dev->propbit);
  break;

 case 133:
  __set_bit(KEY_PROG1, input_dev->keybit);
  __set_bit(KEY_PROG2, input_dev->keybit);
  __set_bit(KEY_PROG3, input_dev->keybit);

  __set_bit(KEY_BUTTONCONFIG, input_dev->keybit);
  __set_bit(KEY_INFO, input_dev->keybit);


 case 134:
 case 130:
 case 161:
  input_set_abs_params(input_dev, ABS_RX, 0, 4096, 0, 0);
  input_set_abs_params(input_dev, ABS_RY, 0, 4096, 0, 0);
  break;

 case 135:
  input_set_abs_params(input_dev, ABS_WHEEL, 0, 71, 0, 0);
  break;

 case 154:
 case 153:
  input_set_abs_params(input_dev, ABS_RY, 0, 4096, 0, 0);


 case 152:
  input_set_abs_params(input_dev, ABS_RX, 0, 4096, 0, 0);
  break;

 case 147:
 case 146:
 case 138:
 case 139:
 case 145:
 case 137:
 case 140:
 case 141:
  input_set_abs_params(input_dev, ABS_WHEEL, 0, 71, 0, 0);
  break;

 case 148:





  __set_bit(BTN_STYLUS, input_dev->keybit);


 case 151:
 case 150:
 case 149:
  input_set_abs_params(input_dev, ABS_WHEEL, 0, 71, 0, 0);
  break;

 case 144:
 case 163:
 case 162:
 case 143:
  __clear_bit(ABS_MISC, input_dev->absbit);

  __set_bit(BTN_LEFT, input_dev->keybit);
  __set_bit(BTN_FORWARD, input_dev->keybit);
  __set_bit(BTN_BACK, input_dev->keybit);
  __set_bit(BTN_RIGHT, input_dev->keybit);

  break;

 case 136:
  input_set_capability(input_dev, EV_MSC, MSC_SERIAL);
  input_set_abs_params(input_dev, ABS_WHEEL, 0, 71, 0, 0);
  break;

 case 142:
 case 155:
  break;

 default:

  return -ENODEV;
 }
 return 0;
}
