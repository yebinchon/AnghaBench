
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int * W83773_STATUS ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int get_fault(struct regmap *regmap, int index, long *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(regmap, W83773_STATUS[index], &regval);
 if (ret < 0)
  return ret;

 *val = (regval & 0x04) >> 2;
 return 0;
}
