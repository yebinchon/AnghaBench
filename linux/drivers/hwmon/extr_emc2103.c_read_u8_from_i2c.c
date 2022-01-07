
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_warn (int *,char*,int,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int read_u8_from_i2c(struct i2c_client *client, u8 i2c_reg, u8 *output)
{
 int status = i2c_smbus_read_byte_data(client, i2c_reg);
 if (status < 0) {
  dev_warn(&client->dev, "reg 0x%02x, err %d\n",
   i2c_reg, status);
 } else {
  *output = status;
 }
 return status;
}
