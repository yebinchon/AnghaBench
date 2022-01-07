
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int ,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static inline int write_byte(struct i2c_client *client, u8 reg, u8 data)
{
 int res = i2c_smbus_write_byte_data(client, reg, data);
 if (res < 0) {
  dev_err(&client->dev,
   "Unable to write value 0x%02x to register 0x%02x.\n",
   data, reg);
 }
 return res;
}
