
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max517_data {struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 struct max517_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max517_set_value(struct iio_dev *indio_dev,
 long val, int channel)
{
 struct max517_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;
 u8 outbuf[2];
 int res;

 if (val < 0 || val > 255)
  return -EINVAL;

 outbuf[0] = channel;
 outbuf[1] = val;

 res = i2c_master_send(client, outbuf, 2);
 if (res < 0)
  return res;
 else if (res != 2)
  return -EIO;
 else
  return 0;
}
