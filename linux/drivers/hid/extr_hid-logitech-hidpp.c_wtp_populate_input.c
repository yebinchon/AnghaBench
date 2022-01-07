
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtp_data {int x_size; int y_size; int maxcontacts; int resolution; } ;
struct input_dev {int propbit; int evbit; } ;
struct hidpp_device {int quirks; struct wtp_data* private_data; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_LED ;
 int EV_REL ;
 int HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_POINTER ;
 int INPUT_PROP_BUTTONPAD ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;

__attribute__((used)) static void wtp_populate_input(struct hidpp_device *hidpp,
          struct input_dev *input_dev)
{
 struct wtp_data *wd = hidpp->private_data;

 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(EV_KEY, input_dev->evbit);
 __clear_bit(EV_REL, input_dev->evbit);
 __clear_bit(EV_LED, input_dev->evbit);

 input_set_abs_params(input_dev, ABS_MT_POSITION_X, 0, wd->x_size, 0, 0);
 input_abs_set_res(input_dev, ABS_MT_POSITION_X, wd->resolution);
 input_set_abs_params(input_dev, ABS_MT_POSITION_Y, 0, wd->y_size, 0, 0);
 input_abs_set_res(input_dev, ABS_MT_POSITION_Y, wd->resolution);


 input_set_abs_params(input_dev, ABS_MT_PRESSURE, 0, 50, 0, 0);

 input_set_capability(input_dev, EV_KEY, BTN_LEFT);

 if (hidpp->quirks & HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS)
  input_set_capability(input_dev, EV_KEY, BTN_RIGHT);
 else
  __set_bit(INPUT_PROP_BUTTONPAD, input_dev->propbit);

 input_mt_init_slots(input_dev, wd->maxcontacts, INPUT_MT_POINTER |
  INPUT_MT_DROP_UNUSED);
}
