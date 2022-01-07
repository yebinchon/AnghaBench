
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; } ;
struct hidpp_device {int dummy; } ;


 int BTN_0 ;
 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_4 ;
 int BTN_5 ;
 int BTN_6 ;
 int BTN_7 ;
 int __set_bit (int ,int ) ;

__attribute__((used)) static void hidpp10_extra_mouse_buttons_populate_input(
   struct hidpp_device *hidpp, struct input_dev *input_dev)
{

 __set_bit(BTN_0, input_dev->keybit);
 __set_bit(BTN_1, input_dev->keybit);
 __set_bit(BTN_2, input_dev->keybit);
 __set_bit(BTN_3, input_dev->keybit);
 __set_bit(BTN_4, input_dev->keybit);
 __set_bit(BTN_5, input_dev->keybit);
 __set_bit(BTN_6, input_dev->keybit);
 __set_bit(BTN_7, input_dev->keybit);
}
