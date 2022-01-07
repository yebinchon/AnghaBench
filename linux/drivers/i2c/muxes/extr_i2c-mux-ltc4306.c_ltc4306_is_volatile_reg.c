
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int LTC_REG_CONFIG ;

__attribute__((used)) static bool ltc4306_is_volatile_reg(struct device *dev, unsigned int reg)
{
 return (reg == LTC_REG_CONFIG) ? 1 : 0;
}
