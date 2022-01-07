
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int INA2XX_CONFIG ;
 unsigned int INA2XX_CURRENT ;

__attribute__((used)) static bool ina2xx_is_writeable_reg(struct device *dev, unsigned int reg)
{
 return (reg == INA2XX_CONFIG) || (reg > INA2XX_CURRENT);
}
