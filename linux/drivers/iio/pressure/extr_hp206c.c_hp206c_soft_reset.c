
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct hp206c_data {struct i2c_client* client; } ;


 int HP206C_CMD_SOFT_RST ;
 int dev_err (int *,char*,int) ;
 int hp206c_set_compensation (struct i2c_client*,int) ;
 int hp206c_wait_dev_rdy (struct iio_dev*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 struct hp206c_data* iio_priv (struct iio_dev*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hp206c_soft_reset(struct iio_dev *indio_dev)
{
 int ret;
 struct hp206c_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;

 ret = i2c_smbus_write_byte(client, HP206C_CMD_SOFT_RST);
 if (ret) {
  dev_err(&client->dev, "Failed to reset device: %d\n", ret);
  return ret;
 }

 usleep_range(400, 600);

 ret = hp206c_wait_dev_rdy(indio_dev);
 if (ret) {
  dev_err(&client->dev, "Device not ready after soft reset: %d\n", ret);
  return ret;
 }

 ret = hp206c_set_compensation(client, 1);
 if (ret)
  dev_err(&client->dev, "Failed to enable compensation: %d\n", ret);
 return ret;
}
