
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int channel; int address; } ;
struct ad5360_state {int dummy; } ;


 int AD5360_READBACK_GAIN ;
 int AD5360_READBACK_OFFSET ;
 int AD5360_READBACK_SF ;
 int AD5360_READBACK_X1A ;
 int AD5360_REG_SF_OFS (unsigned int) ;
 int EINVAL ;





 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5360_get_channel_vref (struct ad5360_state*,int ) ;
 unsigned int ad5360_get_channel_vref_index (struct ad5360_state*,int ) ;
 int ad5360_read (struct iio_dev*,int ,int ) ;
 struct ad5360_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5360_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad5360_state *st = iio_priv(indio_dev);
 unsigned int ofs_index;
 int scale_uv;
 int ret;

 switch (m) {
 case 129:
  ret = ad5360_read(indio_dev, AD5360_READBACK_X1A,
   chan->address);
  if (ret < 0)
   return ret;
  *val = ret >> chan->scan_type.shift;
  return IIO_VAL_INT;
 case 128:
  scale_uv = ad5360_get_channel_vref(st, chan->channel);
  if (scale_uv < 0)
   return scale_uv;


  *val = scale_uv * 4 / 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 132:
  ret = ad5360_read(indio_dev, AD5360_READBACK_OFFSET,
   chan->address);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 131:
  ret = ad5360_read(indio_dev, AD5360_READBACK_GAIN,
   chan->address);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 130:
  ofs_index = ad5360_get_channel_vref_index(st, chan->channel);
  ret = ad5360_read(indio_dev, AD5360_READBACK_SF,
   AD5360_REG_SF_OFS(ofs_index));
  if (ret < 0)
   return ret;

  ret <<= (chan->scan_type.realbits - 14);
  *val = -ret;
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
