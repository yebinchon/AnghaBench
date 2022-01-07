
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina3221_data {int regmap; } ;


 int regmap_read (int ,unsigned int,unsigned int*) ;
 int sign_extend32 (unsigned int,int) ;

__attribute__((used)) static int ina3221_read_value(struct ina3221_data *ina, unsigned int reg,
         int *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(ina->regmap, reg, &regval);
 if (ret)
  return ret;

 *val = sign_extend32(regval >> 3, 12);

 return 0;
}
