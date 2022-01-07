
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int distance_fuzz; int distance_max; } ;
struct wacom_wac {TYPE_1__ features; struct input_dev* pen_input; } ;
struct input_dev {int keybit; } ;


 int ABS_DISTANCE ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int EV_MSC ;
 int MSC_SERIAL ;
 int __set_bit (int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;

__attribute__((used)) static void wacom_setup_basic_pro_pen(struct wacom_wac *wacom_wac)
{
 struct input_dev *input_dev = wacom_wac->pen_input;

 input_set_capability(input_dev, EV_MSC, MSC_SERIAL);

 __set_bit(BTN_TOOL_PEN, input_dev->keybit);
 __set_bit(BTN_STYLUS, input_dev->keybit);
 __set_bit(BTN_STYLUS2, input_dev->keybit);

 input_set_abs_params(input_dev, ABS_DISTANCE,
        0, wacom_wac->features.distance_max, wacom_wac->features.distance_fuzz, 0);
}
