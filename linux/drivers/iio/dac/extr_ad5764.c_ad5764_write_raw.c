
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;


 int EINVAL ;



 unsigned int ad5764_chan_info_to_reg (struct iio_chan_spec const*,long) ;
 int ad5764_write (struct iio_dev*,unsigned int,int ) ;

__attribute__((used)) static int ad5764_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long info)
{
 const int max_val = (1 << chan->scan_type.realbits);
 unsigned int reg;

 switch (info) {
 case 128:
  if (val >= max_val || val < 0)
   return -EINVAL;
  val <<= chan->scan_type.shift;
  break;
 case 130:
  if (val >= 128 || val < -128)
   return -EINVAL;
  break;
 case 129:
  if (val >= 32 || val < -32)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 reg = ad5764_chan_info_to_reg(chan, info);
 return ad5764_write(indio_dev, reg, (u16)val);
}
