
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int REG_BANK ;
 unsigned int REG_PWM (int) ;

__attribute__((used)) static bool nct7802_regmap_is_volatile(struct device *dev, unsigned int reg)
{
 return (reg != REG_BANK && reg <= 0x20) ||
  (reg >= REG_PWM(0) && reg <= REG_PWM(2));
}
