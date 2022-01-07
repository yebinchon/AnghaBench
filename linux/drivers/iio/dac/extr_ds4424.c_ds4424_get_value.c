
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ds4424_data {int lock; int client; } ;


 int DS4424_DAC_ADDR (int) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 struct ds4424_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ds4424_get_value(struct iio_dev *indio_dev,
        int *val, int channel)
{
 struct ds4424_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->lock);
 ret = i2c_smbus_read_byte_data(data->client, DS4424_DAC_ADDR(channel));
 if (ret < 0)
  goto fail;

 *val = ret;

fail:
 mutex_unlock(&data->lock);
 return ret;
}
