
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_BTN_S1 ;
 int LO_FOFF ;
 int gpio_direction_input (int ) ;
 int gpio_get_value (int ) ;
 int rb532_gpio_set_func (int ) ;
 int set_latch_u5 (int ,int ) ;

__attribute__((used)) static bool rb532_button_pressed(void)
{
 int val;

 set_latch_u5(0, LO_FOFF);
 gpio_direction_input(GPIO_BTN_S1);

 val = gpio_get_value(GPIO_BTN_S1);

 rb532_gpio_set_func(GPIO_BTN_S1);
 set_latch_u5(LO_FOFF, 0);

 return !val;
}
