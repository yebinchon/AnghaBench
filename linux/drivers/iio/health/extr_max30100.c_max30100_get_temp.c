
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int regmap; } ;


 int MAX30100_REG_MODE_CONFIG ;
 int MAX30100_REG_MODE_CONFIG_TEMP_EN ;
 int max30100_read_temp (struct max30100_data*,int*) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max30100_get_temp(struct max30100_data *data, int *val)
{
 int ret;


 ret = regmap_update_bits(data->regmap, MAX30100_REG_MODE_CONFIG,
     MAX30100_REG_MODE_CONFIG_TEMP_EN,
     MAX30100_REG_MODE_CONFIG_TEMP_EN);
 if (ret)
  return ret;

 msleep(35);

 return max30100_read_temp(data, val);
}
