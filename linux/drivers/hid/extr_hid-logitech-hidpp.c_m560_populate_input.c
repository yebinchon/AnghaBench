
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int relbit; int evbit; int keybit; } ;
struct hidpp_device {int dummy; } ;


 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int EV_KEY ;
 int EV_REL ;
 int REL_HWHEEL ;
 int REL_HWHEEL_HI_RES ;
 int REL_WHEEL ;
 int REL_WHEEL_HI_RES ;
 int REL_X ;
 int REL_Y ;
 int __set_bit (int ,int ) ;

__attribute__((used)) static void m560_populate_input(struct hidpp_device *hidpp,
    struct input_dev *input_dev)
{
 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_MIDDLE, input_dev->keybit);
 __set_bit(BTN_RIGHT, input_dev->keybit);
 __set_bit(BTN_LEFT, input_dev->keybit);
 __set_bit(BTN_BACK, input_dev->keybit);
 __set_bit(BTN_FORWARD, input_dev->keybit);

 __set_bit(EV_REL, input_dev->evbit);
 __set_bit(REL_X, input_dev->relbit);
 __set_bit(REL_Y, input_dev->relbit);
 __set_bit(REL_WHEEL, input_dev->relbit);
 __set_bit(REL_HWHEEL, input_dev->relbit);
 __set_bit(REL_WHEEL_HI_RES, input_dev->relbit);
 __set_bit(REL_HWHEEL_HI_RES, input_dev->relbit);
}
