
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct ad5421_state {int dummy; } ;


 int AD5421_REG_DAC_DATA ;
 int AD5421_REG_GAIN ;
 int AD5421_REG_OFFSET ;
 int EINVAL ;





 scalar_t__ IIO_CURRENT ;
 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int ad5421_get_current_min_max (struct ad5421_state*,unsigned int*,unsigned int*) ;
 int ad5421_get_offset (struct ad5421_state*) ;
 int ad5421_read (struct iio_dev*,int ) ;
 struct ad5421_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5421_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long m)
{
 struct ad5421_state *st = iio_priv(indio_dev);
 unsigned int min, max;
 int ret;

 if (chan->type != IIO_CURRENT)
  return -EINVAL;

 switch (m) {
 case 129:
  ret = ad5421_read(indio_dev, AD5421_REG_DAC_DATA);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:
  ad5421_get_current_min_max(st, &min, &max);
  *val = max - min;
  *val2 = (1 << 16) * 1000;
  return IIO_VAL_FRACTIONAL;
 case 130:
  *val = ad5421_get_offset(st);
  return IIO_VAL_INT;
 case 132:
  ret = ad5421_read(indio_dev, AD5421_REG_OFFSET);
  if (ret < 0)
   return ret;
  *val = ret - 32768;
  return IIO_VAL_INT;
 case 131:
  ret = ad5421_read(indio_dev, AD5421_REG_GAIN);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
