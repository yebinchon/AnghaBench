
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {int channel; TYPE_1__ scan_type; int address; } ;
struct ad5360_state {int dummy; } ;


 int AD5360_CMD_SPECIAL_FUNCTION ;
 int AD5360_CMD_WRITE_DATA ;
 int AD5360_CMD_WRITE_GAIN ;
 int AD5360_CMD_WRITE_OFFSET ;
 int AD5360_REG_SF_OFS (unsigned int) ;
 int EINVAL ;




 unsigned int ad5360_get_channel_vref_index (struct ad5360_state*,int ) ;
 int ad5360_write (struct iio_dev*,int ,int ,int,int ) ;
 struct ad5360_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5360_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct ad5360_state *st = iio_priv(indio_dev);
 int max_val = (1 << chan->scan_type.realbits);
 unsigned int ofs_index;

 switch (mask) {
 case 128:
  if (val >= max_val || val < 0)
   return -EINVAL;

  return ad5360_write(indio_dev, AD5360_CMD_WRITE_DATA,
     chan->address, val, chan->scan_type.shift);

 case 131:
  if (val >= max_val || val < 0)
   return -EINVAL;

  return ad5360_write(indio_dev, AD5360_CMD_WRITE_OFFSET,
     chan->address, val, chan->scan_type.shift);

 case 130:
  if (val >= max_val || val < 0)
   return -EINVAL;

  return ad5360_write(indio_dev, AD5360_CMD_WRITE_GAIN,
     chan->address, val, chan->scan_type.shift);

 case 129:
  if (val <= -max_val || val > 0)
   return -EINVAL;

  val = -val;




  val >>= (chan->scan_type.realbits - 14);




  ofs_index = ad5360_get_channel_vref_index(st, chan->channel);
  return ad5360_write(indio_dev, AD5360_CMD_SPECIAL_FUNCTION,
     AD5360_REG_SF_OFS(ofs_index), val, 0);
 default:
  break;
 }

 return -EINVAL;
}
