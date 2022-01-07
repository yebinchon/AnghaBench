
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adc128_data {int mode; scalar_t__ regulator; struct i2c_client* client; } ;


 int ADC128_REG_CONFIG ;
 int ADC128_REG_CONFIG_ADV ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int adc128_init_client(struct adc128_data *data)
{
 struct i2c_client *client = data->client;
 int err;





 err = i2c_smbus_write_byte_data(client, ADC128_REG_CONFIG, 0x80);
 if (err)
  return err;


 if (data->mode != 0) {
  err = i2c_smbus_write_byte_data(client,
      ADC128_REG_CONFIG_ADV,
      data->mode << 1);
  if (err)
   return err;
 }


 err = i2c_smbus_write_byte_data(client, ADC128_REG_CONFIG, 0x01);
 if (err)
  return err;


 if (data->regulator) {
  err = i2c_smbus_write_byte_data(client,
      ADC128_REG_CONFIG_ADV, 0x01);
  if (err)
   return err;
 }

 return 0;
}
