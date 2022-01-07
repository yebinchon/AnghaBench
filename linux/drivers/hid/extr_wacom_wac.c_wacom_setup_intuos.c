
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {struct input_dev* pen_input; } ;
struct input_dev {int keybit; } ;


 int ABS_RZ ;
 int ABS_THROTTLE ;
 int BTN_EXTRA ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_SIDE ;
 int BTN_TOOL_LENS ;
 int BTN_TOOL_MOUSE ;
 int EV_REL ;
 int REL_WHEEL ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int wacom_setup_cintiq (struct wacom_wac*) ;

__attribute__((used)) static void wacom_setup_intuos(struct wacom_wac *wacom_wac)
{
 struct input_dev *input_dev = wacom_wac->pen_input;

 input_set_capability(input_dev, EV_REL, REL_WHEEL);

 wacom_setup_cintiq(wacom_wac);

 __set_bit(BTN_LEFT, input_dev->keybit);
 __set_bit(BTN_RIGHT, input_dev->keybit);
 __set_bit(BTN_MIDDLE, input_dev->keybit);
 __set_bit(BTN_SIDE, input_dev->keybit);
 __set_bit(BTN_EXTRA, input_dev->keybit);
 __set_bit(BTN_TOOL_MOUSE, input_dev->keybit);
 __set_bit(BTN_TOOL_LENS, input_dev->keybit);

 input_set_abs_params(input_dev, ABS_RZ, -900, 899, 0, 0);
 input_abs_set_res(input_dev, ABS_RZ, 287);
 input_set_abs_params(input_dev, ABS_THROTTLE, -1023, 1023, 0, 0);
}
