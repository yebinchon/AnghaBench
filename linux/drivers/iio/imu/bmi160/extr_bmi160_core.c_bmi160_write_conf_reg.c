
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int regmap_read (struct regmap*,unsigned int,unsigned int*) ;
 int regmap_write (struct regmap*,unsigned int,unsigned int) ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static int bmi160_write_conf_reg(struct regmap *regmap, unsigned int reg,
     unsigned int mask, unsigned int bits,
     unsigned int write_usleep)
{
 int ret;
 unsigned int val;

 ret = regmap_read(regmap, reg, &val);
 if (ret)
  return ret;

 val = (val & ~mask) | bits;

 ret = regmap_write(regmap, reg, val);
 if (ret)
  return ret;





 usleep_range(write_usleep, write_usleep + 1000);

 return 0;
}
