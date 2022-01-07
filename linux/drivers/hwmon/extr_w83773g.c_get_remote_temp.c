
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int * W83773_TEMP_LSB ;
 int * W83773_TEMP_MSB ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 long temp_of_remote (unsigned int,unsigned int) ;

__attribute__((used)) static int get_remote_temp(struct regmap *regmap, int index, long *val)
{
 unsigned int regval_high;
 unsigned int regval_low;
 int ret;

 ret = regmap_read(regmap, W83773_TEMP_MSB[index], &regval_high);
 if (ret < 0)
  return ret;

 ret = regmap_read(regmap, W83773_TEMP_LSB[index], &regval_low);
 if (ret < 0)
  return ret;

 *val = temp_of_remote(regval_high, regval_low);
 return 0;
}
