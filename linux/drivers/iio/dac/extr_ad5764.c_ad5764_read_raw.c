
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int channel; int address; } ;
struct ad5764_state {int dummy; } ;


 unsigned int AD5764_REG_DATA (int ) ;
 unsigned int AD5764_REG_FINE_GAIN (int ) ;
 unsigned int AD5764_REG_OFFSET (int ) ;
 int EINVAL ;





 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5764_get_channel_vref (struct ad5764_state*,int ) ;
 int ad5764_read (struct iio_dev*,unsigned int,int*) ;
 struct ad5764_state* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int ad5764_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
 struct ad5764_state *st = iio_priv(indio_dev);
 unsigned int reg;
 int vref;
 int ret;

 switch (info) {
 case 129:
  reg = AD5764_REG_DATA(chan->address);
  ret = ad5764_read(indio_dev, reg, val);
  if (ret < 0)
   return ret;
  *val >>= chan->scan_type.shift;
  return IIO_VAL_INT;
 case 132:
  reg = AD5764_REG_OFFSET(chan->address);
  ret = ad5764_read(indio_dev, reg, val);
  if (ret < 0)
   return ret;
  *val = sign_extend32(*val, 7);
  return IIO_VAL_INT;
 case 131:
  reg = AD5764_REG_FINE_GAIN(chan->address);
  ret = ad5764_read(indio_dev, reg, val);
  if (ret < 0)
   return ret;
  *val = sign_extend32(*val, 5);
  return IIO_VAL_INT;
 case 128:

  vref = ad5764_get_channel_vref(st, chan->channel);
  if (vref < 0)
   return vref;

  *val = vref * 4 / 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 130:
  *val = -(1 << chan->scan_type.realbits) / 2;
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
