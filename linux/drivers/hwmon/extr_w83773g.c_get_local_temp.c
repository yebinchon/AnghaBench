
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int W83773_LOCAL_TEMP ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 long temp_of_local (unsigned int) ;

__attribute__((used)) static int get_local_temp(struct regmap *regmap, long *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(regmap, W83773_LOCAL_TEMP, &regval);
 if (ret < 0)
  return ret;

 *val = temp_of_local(regval);
 return 0;
}
