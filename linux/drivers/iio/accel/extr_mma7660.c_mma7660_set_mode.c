
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma7660_data {int mode; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef enum mma7660_mode { ____Placeholder_mma7660_mode } mma7660_mode ;


 int MMA7660_MODE_ACTIVE ;
 int MMA7660_REG_MODE ;
 int MMA7660_REG_MODE_BIT_MODE ;
 int MMA7660_REG_MODE_BIT_TON ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int mma7660_set_mode(struct mma7660_data *data,
    enum mma7660_mode mode)
{
 int ret;
 struct i2c_client *client = data->client;

 if (mode == data->mode)
  return 0;

 ret = i2c_smbus_read_byte_data(client, MMA7660_REG_MODE);
 if (ret < 0) {
  dev_err(&client->dev, "failed to read sensor mode\n");
  return ret;
 }

 if (mode == MMA7660_MODE_ACTIVE) {
  ret &= ~MMA7660_REG_MODE_BIT_TON;
  ret |= MMA7660_REG_MODE_BIT_MODE;
 } else {
  ret &= ~MMA7660_REG_MODE_BIT_TON;
  ret &= ~MMA7660_REG_MODE_BIT_MODE;
 }

 ret = i2c_smbus_write_byte_data(client, MMA7660_REG_MODE, ret);
 if (ret < 0) {
  dev_err(&client->dev, "failed to change sensor mode\n");
  return ret;
 }

 data->mode = mode;

 return ret;
}
