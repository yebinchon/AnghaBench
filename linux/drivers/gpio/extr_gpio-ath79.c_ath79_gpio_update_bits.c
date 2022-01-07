
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath79_gpio_ctrl {int dummy; } ;


 int ath79_gpio_read (struct ath79_gpio_ctrl*,unsigned int) ;
 int ath79_gpio_write (struct ath79_gpio_ctrl*,unsigned int,int) ;

__attribute__((used)) static bool ath79_gpio_update_bits(
 struct ath79_gpio_ctrl *ctrl, unsigned reg, u32 mask, u32 bits)
{
 u32 old_val, new_val;

 old_val = ath79_gpio_read(ctrl, reg);
 new_val = (old_val & ~mask) | (bits & mask);

 if (new_val != old_val)
  ath79_gpio_write(ctrl, reg, new_val);

 return new_val != old_val;
}
