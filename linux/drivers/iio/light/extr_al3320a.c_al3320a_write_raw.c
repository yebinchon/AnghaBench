
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct al3320a_data {int client; } ;


 int AL3320A_GAIN_SHIFT ;
 int AL3320A_REG_CONFIG_RANGE ;
 int ARRAY_SIZE (int**) ;
 int EINVAL ;

 int** al3320a_scales ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct al3320a_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int al3320a_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int val,
        int val2, long mask)
{
 struct al3320a_data *data = iio_priv(indio_dev);
 int i;

 switch (mask) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(al3320a_scales); i++) {
   if (val == al3320a_scales[i][0] &&
       val2 == al3320a_scales[i][1])
    return i2c_smbus_write_byte_data(data->client,
     AL3320A_REG_CONFIG_RANGE,
     i << AL3320A_GAIN_SHIFT);
  }
  break;
 }
 return -EINVAL;
}
