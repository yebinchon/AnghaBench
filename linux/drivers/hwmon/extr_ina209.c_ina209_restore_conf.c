
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina209_data {int calibration_orig; int config_orig; } ;
struct i2c_client {int dummy; } ;


 int INA209_CALIBRATION ;
 int INA209_CONFIGURATION ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int ) ;

__attribute__((used)) static void ina209_restore_conf(struct i2c_client *client,
    struct ina209_data *data)
{

 i2c_smbus_write_word_swapped(client, INA209_CONFIGURATION,
         data->config_orig);
 i2c_smbus_write_word_swapped(client, INA209_CALIBRATION,
         data->calibration_orig);
}
