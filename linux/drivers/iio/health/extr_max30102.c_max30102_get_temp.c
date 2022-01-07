
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30102_data {int regmap; } ;


 int MAX30102_REG_TEMP_CONFIG ;
 int MAX30102_REG_TEMP_CONFIG_TEMP_EN ;
 int max30102_read_temp (struct max30102_data*,int*) ;
 int max30102_set_power (struct max30102_data*,int) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max30102_get_temp(struct max30102_data *data, int *val, bool en)
{
 int ret;

 if (en) {
  ret = max30102_set_power(data, 1);
  if (ret)
   return ret;
 }


 ret = regmap_update_bits(data->regmap, MAX30102_REG_TEMP_CONFIG,
     MAX30102_REG_TEMP_CONFIG_TEMP_EN,
     MAX30102_REG_TEMP_CONFIG_TEMP_EN);
 if (ret)
  goto out;

 msleep(35);
 ret = max30102_read_temp(data, val);

out:
 if (en)
  max30102_set_power(data, 0);

 return ret;
}
