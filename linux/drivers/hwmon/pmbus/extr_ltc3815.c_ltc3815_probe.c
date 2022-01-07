
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int adapter; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int LTC3815_ID ;
 int LTC3815_ID_MASK ;
 int LTC3815_MFR_SPECIAL_ID ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int ltc3815_info ;
 int pmbus_do_probe (struct i2c_client*,struct i2c_device_id const*,int *) ;

__attribute__((used)) static int ltc3815_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int chip_id;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_WORD_DATA))
  return -ENODEV;

 chip_id = i2c_smbus_read_word_data(client, LTC3815_MFR_SPECIAL_ID);
 if (chip_id < 0)
  return chip_id;
 if ((chip_id & LTC3815_ID_MASK) != LTC3815_ID)
  return -ENODEV;

 return pmbus_do_probe(client, id, &ltc3815_info);
}
