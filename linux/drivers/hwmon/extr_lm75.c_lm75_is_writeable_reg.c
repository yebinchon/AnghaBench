
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int LM75_REG_TEMP ;

__attribute__((used)) static bool lm75_is_writeable_reg(struct device *dev, unsigned int reg)
{
 return reg != LM75_REG_TEMP;
}
