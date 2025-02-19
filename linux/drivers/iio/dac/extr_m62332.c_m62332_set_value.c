
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct m62332_data {int* raw; int mutex; int vcc; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EIO ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 struct m62332_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int m62332_set_value(struct iio_dev *indio_dev, u8 val, int channel)
{
 struct m62332_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;
 u8 outbuf[2];
 int res;

 if (val == data->raw[channel])
  return 0;

 outbuf[0] = channel;
 outbuf[1] = val;

 mutex_lock(&data->mutex);

 if (val) {
  res = regulator_enable(data->vcc);
  if (res)
   goto out;
 }

 res = i2c_master_send(client, outbuf, ARRAY_SIZE(outbuf));
 if (res >= 0 && res != ARRAY_SIZE(outbuf))
  res = -EIO;
 if (res < 0)
  goto out;

 data->raw[channel] = val;

 if (!val)
  regulator_disable(data->vcc);

 mutex_unlock(&data->mutex);

 return 0;

out:
 mutex_unlock(&data->mutex);

 return res;
}
