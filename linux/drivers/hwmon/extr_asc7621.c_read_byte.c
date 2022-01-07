
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static inline u8 read_byte(struct i2c_client *client, u8 reg)
{
 int res = i2c_smbus_read_byte_data(client, reg);
 if (res < 0) {
  dev_err(&client->dev,
   "Unable to read from register 0x%02x.\n", reg);
  return 0;
 }
 return res & 0xff;
}
