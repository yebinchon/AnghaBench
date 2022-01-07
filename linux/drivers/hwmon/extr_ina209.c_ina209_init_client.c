
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ina2xx_platform_data {scalar_t__ shunt_uohms; } ;
struct ina209_data {int calibration_orig; int config_orig; int update_interval; } ;
struct TYPE_2__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int EINVAL ;
 int INA209_CALIBRATION ;
 int INA209_CONFIGURATION ;
 int INA209_CONFIG_DEFAULT ;
 int INA209_SHUNT_DEFAULT ;
 int INA209_STATUS ;
 int clamp_val (int,int,int) ;
 struct ina2xx_platform_data* dev_get_platdata (TYPE_1__*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int ) ;
 int ina209_interval_from_reg (int ) ;
 int of_property_read_u32 (int ,char*,int*) ;

__attribute__((used)) static int ina209_init_client(struct i2c_client *client,
         struct ina209_data *data)
{
 struct ina2xx_platform_data *pdata = dev_get_platdata(&client->dev);
 u32 shunt;
 int reg;

 reg = i2c_smbus_read_word_swapped(client, INA209_CALIBRATION);
 if (reg < 0)
  return reg;
 data->calibration_orig = reg;

 reg = i2c_smbus_read_word_swapped(client, INA209_CONFIGURATION);
 if (reg < 0)
  return reg;
 data->config_orig = reg;

 if (pdata) {
  if (pdata->shunt_uohms <= 0)
   return -EINVAL;
  shunt = pdata->shunt_uohms;
 } else if (!of_property_read_u32(client->dev.of_node, "shunt-resistor",
      &shunt)) {
  if (shunt == 0)
   return -EINVAL;
 } else {
  shunt = data->calibration_orig ?
    40960000 / data->calibration_orig : INA209_SHUNT_DEFAULT;
 }

 i2c_smbus_write_word_swapped(client, INA209_CONFIGURATION,
         INA209_CONFIG_DEFAULT);
 data->update_interval = ina209_interval_from_reg(INA209_CONFIG_DEFAULT);





 i2c_smbus_write_word_swapped(client, INA209_CALIBRATION,
         clamp_val(40960000 / shunt, 1, 65535));


 i2c_smbus_read_word_swapped(client, INA209_STATUS);

 return 0;
}
