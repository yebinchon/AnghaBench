
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma7660_data {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int ETIMEDOUT ;
 int MMA7660_I2C_READ_RETRIES ;
 int MMA7660_REG_OUT_BIT_ALERT ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int mma7660_read_accel(struct mma7660_data *data, u8 address)
{
 int ret, retries = MMA7660_I2C_READ_RETRIES;
 struct i2c_client *client = data->client;
 do {
  ret = i2c_smbus_read_byte_data(client, address);
  if (ret < 0) {
   dev_err(&client->dev, "register read failed\n");
   return ret;
  }
 } while (retries-- > 0 && ret & MMA7660_REG_OUT_BIT_ALERT);

 if (ret & MMA7660_REG_OUT_BIT_ALERT) {
  dev_err(&client->dev, "all register read retries failed\n");
  return -ETIMEDOUT;
 }

 return ret;
}
