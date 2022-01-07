
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GPIO_NUM_PER_GROUP ;

__attribute__((used)) static void mc9s_gpio_to_reg_and_bit(int offset, u8 *reg, u8 *bit)
{
 *reg = 0x20 + offset / GPIO_NUM_PER_GROUP;
 *bit = offset % GPIO_NUM_PER_GROUP;
}
