
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {unsigned int shunt_resistor_uohm; } ;


 int EINVAL ;
 unsigned int INT_MAX ;

__attribute__((used)) static int set_shunt_resistor(struct ina2xx_chip_info *chip, unsigned int val)
{
 if (val == 0 || val > INT_MAX)
  return -EINVAL;

 chip->shunt_resistor_uohm = val;

 return 0;
}
