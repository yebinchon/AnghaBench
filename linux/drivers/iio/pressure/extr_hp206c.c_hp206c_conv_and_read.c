
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dev; } ;
struct i2c_client {int dummy; } ;
struct hp206c_data {struct i2c_client* client; } ;


 int dev_err (int *,char*,int) ;
 int hp206c_read_20bit (struct i2c_client*,int ) ;
 int hp206c_wait_dev_rdy (struct iio_dev*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 struct hp206c_data* iio_priv (struct iio_dev*) ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static int hp206c_conv_and_read(struct iio_dev *indio_dev,
    u8 conv_cmd, u8 read_cmd,
    unsigned int sleep_us)
{
 int ret;
 struct hp206c_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;

 ret = hp206c_wait_dev_rdy(indio_dev);
 if (ret < 0) {
  dev_err(&indio_dev->dev, "Device not ready: %d\n", ret);
  return ret;
 }

 ret = i2c_smbus_write_byte(client, conv_cmd);
 if (ret < 0) {
  dev_err(&indio_dev->dev, "Failed convert: %d\n", ret);
  return ret;
 }

 usleep_range(sleep_us, sleep_us * 3 / 2);

 ret = hp206c_wait_dev_rdy(indio_dev);
 if (ret < 0) {
  dev_err(&indio_dev->dev, "Device not ready: %d\n", ret);
  return ret;
 }

 ret = hp206c_read_20bit(client, read_cmd);
 if (ret < 0)
  dev_err(&indio_dev->dev, "Failed read: %d\n", ret);

 return ret;
}
