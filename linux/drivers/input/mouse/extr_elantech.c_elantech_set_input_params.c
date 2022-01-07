
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int keybit; int propbit; int evbit; } ;
struct elantech_device_info {unsigned int x_min; unsigned int y_min; unsigned int x_max; unsigned int y_max; unsigned int width; int hw_version; int fw_version; int* capabilities; int y_res; int x_res; int reports_pressure; scalar_t__ has_middle_button; } ;
struct elantech_data {unsigned int y_max; unsigned int width; struct elantech_device_info info; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_QUADTAP ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int ETP_CAP_HAS_ROCKER ;
 int ETP_MAX_FINGERS ;
 unsigned int ETP_PMAX_V2 ;
 unsigned int ETP_PMIN_V2 ;
 unsigned int ETP_WMAX_V2 ;
 unsigned int ETP_WMIN_V2 ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 int INPUT_MT_SEMI_MT ;
 int INPUT_PROP_POINTER ;
 int INPUT_PROP_SEMI_MT ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int elantech_set_buttonpad_prop (struct psmouse*) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int,int ) ;
 int input_set_abs_params (struct input_dev*,int ,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static int elantech_set_input_params(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;
 struct elantech_device_info *info = &etd->info;
 unsigned int x_min = info->x_min, y_min = info->y_min,
       x_max = info->x_max, y_max = info->y_max,
       width = info->width;

 __set_bit(INPUT_PROP_POINTER, dev->propbit);
 __set_bit(EV_KEY, dev->evbit);
 __set_bit(EV_ABS, dev->evbit);
 __clear_bit(EV_REL, dev->evbit);

 __set_bit(BTN_LEFT, dev->keybit);
 if (info->has_middle_button)
  __set_bit(BTN_MIDDLE, dev->keybit);
 __set_bit(BTN_RIGHT, dev->keybit);

 __set_bit(BTN_TOUCH, dev->keybit);
 __set_bit(BTN_TOOL_FINGER, dev->keybit);
 __set_bit(BTN_TOOL_DOUBLETAP, dev->keybit);
 __set_bit(BTN_TOOL_TRIPLETAP, dev->keybit);

 switch (info->hw_version) {
 case 1:

  if (info->fw_version < 0x020000 &&
      (info->capabilities[0] & ETP_CAP_HAS_ROCKER)) {
   __set_bit(BTN_FORWARD, dev->keybit);
   __set_bit(BTN_BACK, dev->keybit);
  }
  input_set_abs_params(dev, ABS_X, x_min, x_max, 0, 0);
  input_set_abs_params(dev, ABS_Y, y_min, y_max, 0, 0);
  break;

 case 2:
  __set_bit(BTN_TOOL_QUADTAP, dev->keybit);
  __set_bit(INPUT_PROP_SEMI_MT, dev->propbit);

 case 3:
  if (info->hw_version == 3)
   elantech_set_buttonpad_prop(psmouse);
  input_set_abs_params(dev, ABS_X, x_min, x_max, 0, 0);
  input_set_abs_params(dev, ABS_Y, y_min, y_max, 0, 0);
  if (info->reports_pressure) {
   input_set_abs_params(dev, ABS_PRESSURE, ETP_PMIN_V2,
          ETP_PMAX_V2, 0, 0);
   input_set_abs_params(dev, ABS_TOOL_WIDTH, ETP_WMIN_V2,
          ETP_WMAX_V2, 0, 0);
  }
  input_mt_init_slots(dev, 2, INPUT_MT_SEMI_MT);
  input_set_abs_params(dev, ABS_MT_POSITION_X, x_min, x_max, 0, 0);
  input_set_abs_params(dev, ABS_MT_POSITION_Y, y_min, y_max, 0, 0);
  break;

 case 4:
  elantech_set_buttonpad_prop(psmouse);
  __set_bit(BTN_TOOL_QUADTAP, dev->keybit);

  input_set_abs_params(dev, ABS_X, x_min, x_max, 0, 0);
  input_set_abs_params(dev, ABS_Y, y_min, y_max, 0, 0);




  input_set_abs_params(dev, ABS_PRESSURE, ETP_PMIN_V2,
         ETP_PMAX_V2, 0, 0);
  input_set_abs_params(dev, ABS_TOOL_WIDTH, ETP_WMIN_V2,
         ETP_WMAX_V2, 0, 0);

  input_mt_init_slots(dev, ETP_MAX_FINGERS, 0);
  input_set_abs_params(dev, ABS_MT_POSITION_X, x_min, x_max, 0, 0);
  input_set_abs_params(dev, ABS_MT_POSITION_Y, y_min, y_max, 0, 0);
  input_set_abs_params(dev, ABS_MT_PRESSURE, ETP_PMIN_V2,
         ETP_PMAX_V2, 0, 0);




  input_set_abs_params(dev, ABS_MT_TOUCH_MAJOR, 0,
         ETP_WMAX_V2 * width, 0, 0);
  break;
 }

 input_abs_set_res(dev, ABS_X, info->x_res);
 input_abs_set_res(dev, ABS_Y, info->y_res);
 if (info->hw_version > 1) {
  input_abs_set_res(dev, ABS_MT_POSITION_X, info->x_res);
  input_abs_set_res(dev, ABS_MT_POSITION_Y, info->y_res);
 }

 etd->y_max = y_max;
 etd->width = width;

 return 0;
}
