
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max5821_data {int lock; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int IIO_VAL_INT ;
 int i2c_master_recv (struct i2c_client*,int*,int) ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 struct max5821_data* iio_priv (struct iio_dev*) ;
 int* max5821_read_dac_command ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max5821_get_value(struct iio_dev *indio_dev,
        int *val, int channel)
{
 struct max5821_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;
 u8 outbuf[1];
 u8 inbuf[2];
 int ret;

 if ((channel != 0) && (channel != 1))
  return -EINVAL;

 outbuf[0] = max5821_read_dac_command[channel];

 mutex_lock(&data->lock);

 ret = i2c_master_send(client, outbuf, 1);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  return ret;
 } else if (ret != 1) {
  mutex_unlock(&data->lock);
  return -EIO;
 }

 ret = i2c_master_recv(client, inbuf, 2);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  return ret;
 } else if (ret != 2) {
  mutex_unlock(&data->lock);
  return -EIO;
 }

 mutex_unlock(&data->lock);

 *val = ((inbuf[0] & 0x0f) << 6) | (inbuf[1] >> 2);

 return IIO_VAL_INT;
}
