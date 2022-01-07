
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int relbit; int evbit; } ;
struct hidpp_device {int dummy; } ;


 int EV_REL ;
 int REL_HWHEEL ;
 int REL_HWHEEL_HI_RES ;
 int REL_WHEEL ;
 int REL_WHEEL_HI_RES ;
 int __set_bit (int ,int ) ;

__attribute__((used)) static void hidpp10_wheel_populate_input(struct hidpp_device *hidpp,
      struct input_dev *input_dev)
{
 __set_bit(EV_REL, input_dev->evbit);
 __set_bit(REL_WHEEL, input_dev->relbit);
 __set_bit(REL_WHEEL_HI_RES, input_dev->relbit);
 __set_bit(REL_HWHEEL, input_dev->relbit);
 __set_bit(REL_HWHEEL_HI_RES, input_dev->relbit);
}
