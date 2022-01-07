
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct zopt2201_data {size_t res; size_t gain; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_6__ {int scale; } ;
struct TYPE_5__ {int gain; int scale; } ;
struct TYPE_4__ {int us; int bits; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;


 int div_s64 (int,int) ;
 int div_s64_rem (int ,int,int*) ;
 struct zopt2201_data* iio_priv (struct iio_dev*) ;
 TYPE_3__* zopt2201_gain_als ;
 TYPE_2__* zopt2201_gain_uvb ;
 int zopt2201_read (struct zopt2201_data*,int) ;
 TYPE_1__* zopt2201_resolution ;

__attribute__((used)) static int zopt2201_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct zopt2201_data *data = iio_priv(indio_dev);
 u64 tmp;
 int ret;

 switch (mask) {
 case 131:
  ret = zopt2201_read(data, chan->address);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 132:
  ret = zopt2201_read(data, 128);
  if (ret < 0)
   return ret;
  *val = ret * 18 *
   (1 << (20 - zopt2201_resolution[data->res].bits)) /
   zopt2201_gain_uvb[data->gain].gain;
  return IIO_VAL_INT;
 case 130:
  switch (chan->address) {
  case 129:
   *val = zopt2201_gain_als[data->gain].scale;
   break;
  case 128:
   *val = zopt2201_gain_uvb[data->gain].scale;
   break;
  default:
   return -EINVAL;
  }

  *val2 = 1000000;
  *val2 *= (1 << (zopt2201_resolution[data->res].bits - 13));
  tmp = div_s64(*val * 1000000ULL, *val2);
  *val = div_s64_rem(tmp, 1000000, val2);

  return IIO_VAL_INT_PLUS_MICRO;
 case 133:
  *val = 0;
  *val2 = zopt2201_resolution[data->res].us;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
