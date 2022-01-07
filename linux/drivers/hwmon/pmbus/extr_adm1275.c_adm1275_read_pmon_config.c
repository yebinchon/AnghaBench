
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct adm1275_data {scalar_t__ have_power_sampling; } ;


 int ADM1275_PMON_CONFIG ;
 int ADM1275_VI_AVG_MASK ;
 int ADM1275_VI_AVG_SHIFT ;
 int ADM1278_PWR_AVG_MASK ;
 int ADM1278_PWR_AVG_SHIFT ;
 int ADM1278_VI_AVG_MASK ;
 int ADM1278_VI_AVG_SHIFT ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static int adm1275_read_pmon_config(const struct adm1275_data *data,
        struct i2c_client *client, bool is_power)
{
 int shift, ret;
 u16 mask;






 if (data->have_power_sampling) {
  ret = i2c_smbus_read_word_data(client, ADM1275_PMON_CONFIG);
  mask = is_power ? ADM1278_PWR_AVG_MASK : ADM1278_VI_AVG_MASK;
  shift = is_power ? ADM1278_PWR_AVG_SHIFT : ADM1278_VI_AVG_SHIFT;
 } else {
  ret = i2c_smbus_read_byte_data(client, ADM1275_PMON_CONFIG);
  mask = ADM1275_VI_AVG_MASK;
  shift = ADM1275_VI_AVG_SHIFT;
 }
 if (ret < 0)
  return ret;

 return (ret & mask) >> shift;
}
