
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int tilt_fuzz; } ;
struct wacom_wac {struct wacom_features features; struct input_dev* pen_input; } ;
struct input_dev {int keybit; } ;


 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int BTN_TOOL_AIRBRUSH ;
 int BTN_TOOL_BRUSH ;
 int BTN_TOOL_PENCIL ;
 int BTN_TOOL_RUBBER ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int wacom_setup_basic_pro_pen (struct wacom_wac*) ;

__attribute__((used)) static void wacom_setup_cintiq(struct wacom_wac *wacom_wac)
{
 struct input_dev *input_dev = wacom_wac->pen_input;
 struct wacom_features *features = &wacom_wac->features;

 wacom_setup_basic_pro_pen(wacom_wac);

 __set_bit(BTN_TOOL_RUBBER, input_dev->keybit);
 __set_bit(BTN_TOOL_BRUSH, input_dev->keybit);
 __set_bit(BTN_TOOL_PENCIL, input_dev->keybit);
 __set_bit(BTN_TOOL_AIRBRUSH, input_dev->keybit);

 input_set_abs_params(input_dev, ABS_WHEEL, 0, 1023, 0, 0);
 input_set_abs_params(input_dev, ABS_TILT_X, -64, 63, features->tilt_fuzz, 0);
 input_abs_set_res(input_dev, ABS_TILT_X, 57);
 input_set_abs_params(input_dev, ABS_TILT_Y, -64, 63, features->tilt_fuzz, 0);
 input_abs_set_res(input_dev, ABS_TILT_Y, 57);
}
