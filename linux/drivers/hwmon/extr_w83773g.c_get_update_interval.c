
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int W83773_CONVERSION_RATE_REG_READ ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int get_update_interval(struct regmap *regmap, long *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(regmap, W83773_CONVERSION_RATE_REG_READ, &regval);
 if (ret < 0)
  return ret;

 *val = 16000 >> regval;
 return 0;
}
