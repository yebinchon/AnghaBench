
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int device_type; int type; int offset_left; int x_max; int offset_right; int offset_top; int y_max; int offset_bottom; int pressure_max; int x_resolution; int y_resolution; int distance_max; int distance_fuzz; int pressure_fuzz; int y_fuzz; int x_fuzz; } ;
struct wacom_wac {struct wacom_features features; } ;
struct input_dev {int* evbit; int absbit; int keybit; int propbit; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;



 int BIT_MASK (int ) ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_STYLUS3 ;
 int BTN_TOOL_MOUSE ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;







 int ENODEV ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;


 int HID_GENERIC ;
 int INPUT_PROP_DIRECT ;
 int INPUT_PROP_POINTER ;
 int REL_WHEEL ;
 int WACOM_DEVICETYPE_DIRECT ;
 int WACOM_DEVICETYPE_PEN ;


 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int wacom_setup_basic_pro_pen (struct wacom_wac*) ;
 int wacom_setup_cintiq (struct wacom_wac*) ;
 int wacom_setup_intuos (struct wacom_wac*) ;

int wacom_setup_pen_input_capabilities(struct input_dev *input_dev,
       struct wacom_wac *wacom_wac)
{
 struct wacom_features *features = &wacom_wac->features;

 input_dev->evbit[0] |= BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

 if (!(features->device_type & WACOM_DEVICETYPE_PEN))
  return -ENODEV;

 if (features->device_type & WACOM_DEVICETYPE_DIRECT)
  __set_bit(INPUT_PROP_DIRECT, input_dev->propbit);
 else
  __set_bit(INPUT_PROP_POINTER, input_dev->propbit);

 if (features->type == HID_GENERIC) {

  input_set_capability(input_dev, EV_KEY, BTN_STYLUS3);
  return 0;
 }

 __set_bit(BTN_TOUCH, input_dev->keybit);
 __set_bit(ABS_MISC, input_dev->absbit);

 input_set_abs_params(input_dev, ABS_X, 0 + features->offset_left,
        features->x_max - features->offset_right,
        features->x_fuzz, 0);
 input_set_abs_params(input_dev, ABS_Y, 0 + features->offset_top,
        features->y_max - features->offset_bottom,
        features->y_fuzz, 0);
 input_set_abs_params(input_dev, ABS_PRESSURE, 0,
  features->pressure_max, features->pressure_fuzz, 0);


 input_abs_set_res(input_dev, ABS_X, features->x_resolution);
 input_abs_set_res(input_dev, ABS_Y, features->y_resolution);

 switch (features->type) {
 case 166:
  __clear_bit(ABS_MISC, input_dev->absbit);


 case 128:
 case 129:
  input_set_abs_params(input_dev, ABS_DISTANCE, 0,
           features->distance_max,
           features->distance_fuzz, 0);


 case 167:
  input_set_capability(input_dev, EV_REL, REL_WHEEL);

  __set_bit(BTN_LEFT, input_dev->keybit);
  __set_bit(BTN_RIGHT, input_dev->keybit);
  __set_bit(BTN_MIDDLE, input_dev->keybit);

  __set_bit(BTN_TOOL_RUBBER, input_dev->keybit);
  __set_bit(BTN_TOOL_PEN, input_dev->keybit);
  __set_bit(BTN_TOOL_MOUSE, input_dev->keybit);
  __set_bit(BTN_STYLUS, input_dev->keybit);
  __set_bit(BTN_STYLUS2, input_dev->keybit);
  break;

 case 132:
 case 134:
 case 171:
 case 135:
 case 136:
 case 130:
 case 174:
 case 137:
 case 172:
 case 173:
  input_set_abs_params(input_dev, ABS_Z, -900, 899, 0, 0);
  input_abs_set_res(input_dev, ABS_Z, 287);
  wacom_setup_cintiq(wacom_wac);
  break;

 case 164:
 case 163:
 case 162:
 case 161:
 case 158:
 case 160:
 case 159:
  input_set_abs_params(input_dev, ABS_Z, -900, 899, 0, 0);
  input_abs_set_res(input_dev, ABS_Z, 287);


 case 165:
  wacom_setup_intuos(wacom_wac);
  break;

 case 157:
 case 156:
 case 148:
 case 149:
 case 155:
 case 147:
 case 150:
 case 151:
  input_set_abs_params(input_dev, ABS_DISTANCE, 0,
          features->distance_max,
          features->distance_fuzz, 0);

  input_set_abs_params(input_dev, ABS_Z, -900, 899, 0, 0);
  input_abs_set_res(input_dev, ABS_Z, 287);

  wacom_setup_intuos(wacom_wac);
  break;

 case 133:
 case 131:
 case 146:
 case 145:
 case 144:
 case 139:
 case 140:
 case 138:
  __clear_bit(ABS_MISC, input_dev->absbit);


 case 169:
 case 168:
 case 142:
 case 170:
  __set_bit(BTN_TOOL_PEN, input_dev->keybit);
  __set_bit(BTN_TOOL_RUBBER, input_dev->keybit);
  __set_bit(BTN_STYLUS, input_dev->keybit);
  __set_bit(BTN_STYLUS2, input_dev->keybit);
  break;

 case 141:
  __set_bit(BTN_STYLUS2, input_dev->keybit);


 case 143:
  __set_bit(BTN_TOOL_PEN, input_dev->keybit);
  __set_bit(BTN_TOOL_RUBBER, input_dev->keybit);
  __set_bit(BTN_STYLUS, input_dev->keybit);
  break;

 case 154:
 case 175:
 case 176:
 case 153:
 case 152:
  if (features->type == 153 ||
      features->type == 152) {
   wacom_setup_basic_pro_pen(wacom_wac);
  } else {
   __clear_bit(ABS_MISC, input_dev->absbit);
   __set_bit(BTN_TOOL_PEN, input_dev->keybit);
   __set_bit(BTN_TOOL_RUBBER, input_dev->keybit);
   __set_bit(BTN_STYLUS, input_dev->keybit);
   __set_bit(BTN_STYLUS2, input_dev->keybit);
   input_set_abs_params(input_dev, ABS_DISTANCE, 0,
          features->distance_max,
          features->distance_fuzz, 0);
  }
  break;
 case 177:
  __clear_bit(ABS_MISC, input_dev->absbit);
  break;
 }
 return 0;
}
