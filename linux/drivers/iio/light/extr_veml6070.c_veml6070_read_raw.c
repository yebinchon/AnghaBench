
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veml6070_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 struct veml6070_data* iio_priv (struct iio_dev*) ;
 int veml6070_read (struct veml6070_data*) ;
 int veml6070_to_uv_index (int) ;

__attribute__((used)) static int veml6070_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct veml6070_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
 case 129:
  ret = veml6070_read(data);
  if (ret < 0)
   return ret;
  if (mask == 129)
   *val = veml6070_to_uv_index(ret);
  else
   *val = ret;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
