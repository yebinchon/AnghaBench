
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct w83793_data {int bank; } ;
struct i2c_client {int dev; } ;


 int W83793_REG_BANKSEL ;
 int dev_err (int *,char*,int,int,int) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int w83793_write_value(struct i2c_client *client, u16 reg, u8 value)
{
 struct w83793_data *data = i2c_get_clientdata(client);
 int res;
 u8 new_bank = reg >> 8;

 new_bank |= data->bank & 0xfc;
 if (data->bank != new_bank) {
  res = i2c_smbus_write_byte_data(client, W83793_REG_BANKSEL,
      new_bank);
  if (res < 0) {
   dev_err(&client->dev,
    "set bank to %d failed, fall back "
    "to bank %d, write reg 0x%x error\n",
    new_bank, data->bank, reg);
   goto END;
  }
  data->bank = new_bank;
 }

 res = i2c_smbus_write_byte_data(client, reg & 0xff, value);
END:
 return res;
}
