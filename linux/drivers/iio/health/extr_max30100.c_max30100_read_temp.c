
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int regmap; } ;


 int MAX30100_REG_TEMP_FRACTION ;
 int MAX30100_REG_TEMP_INTEGER ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int max30100_read_temp(struct max30100_data *data, int *val)
{
 int ret;
 unsigned int reg;

 ret = regmap_read(data->regmap, MAX30100_REG_TEMP_INTEGER, &reg);
 if (ret < 0)
  return ret;
 *val = reg << 4;

 ret = regmap_read(data->regmap, MAX30100_REG_TEMP_FRACTION, &reg);
 if (ret < 0)
  return ret;

 *val |= reg & 0xf;
 *val = sign_extend32(*val, 11);

 return 0;
}
