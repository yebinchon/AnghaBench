
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct fsp_data* private; struct input_dev* dev; } ;
struct input_dev {int propbit; int keybit; int evbit; int relbit; } ;
struct fsp_data {scalar_t__ ver; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_MIDDLE ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int EV_ABS ;
 int EV_REL ;
 scalar_t__ FSP_VER_STL3888_C0 ;
 int INPUT_PROP_SEMI_MT ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

__attribute__((used)) static int fsp_set_input_params(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct fsp_data *pad = psmouse->private;

 if (pad->ver < FSP_VER_STL3888_C0) {
  __set_bit(BTN_MIDDLE, dev->keybit);
  __set_bit(BTN_BACK, dev->keybit);
  __set_bit(BTN_FORWARD, dev->keybit);
  __set_bit(REL_WHEEL, dev->relbit);
  __set_bit(REL_HWHEEL, dev->relbit);
 } else {
  int abs_x = 967, abs_y = 711;

  __set_bit(EV_ABS, dev->evbit);
  __clear_bit(EV_REL, dev->evbit);
  __set_bit(BTN_TOUCH, dev->keybit);
  __set_bit(BTN_TOOL_FINGER, dev->keybit);
  __set_bit(BTN_TOOL_DOUBLETAP, dev->keybit);
  __set_bit(INPUT_PROP_SEMI_MT, dev->propbit);

  input_set_abs_params(dev, ABS_X, 0, abs_x, 0, 0);
  input_set_abs_params(dev, ABS_Y, 0, abs_y, 0, 0);
  input_mt_init_slots(dev, 2, 0);
  input_set_abs_params(dev, ABS_MT_POSITION_X, 0, abs_x, 0, 0);
  input_set_abs_params(dev, ABS_MT_POSITION_Y, 0, abs_y, 0, 0);
 }

 return 0;
}
