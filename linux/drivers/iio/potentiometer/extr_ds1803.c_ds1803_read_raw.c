
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iio_dev {int num_channels; } ;
struct iio_chan_spec {int channel; } ;
struct ds1803_data {TYPE_1__* cfg; int client; } ;
struct TYPE_2__ {int kohms; } ;


 int ARRAY_SIZE (int ) ;
 int DS1803_MAX_POS ;
 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int ds1803_channels ;
 int i2c_master_recv (int ,int*,int ) ;
 struct ds1803_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ds1803_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct ds1803_data *data = iio_priv(indio_dev);
 int pot = chan->channel;
 int ret;
 u8 result[ARRAY_SIZE(ds1803_channels)];

 switch (mask) {
 case 129:
  ret = i2c_master_recv(data->client, result,
    indio_dev->num_channels);
  if (ret < 0)
   return ret;

  *val = result[pot];
  return IIO_VAL_INT;

 case 128:
  *val = 1000 * data->cfg->kohms;
  *val2 = DS1803_MAX_POS;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
