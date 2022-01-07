
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {size_t address; TYPE_1__ scan_type; } ;
struct ad5449 {int* dac_cache; } ;


 int AD5449_CMD_LOAD_AND_UPDATE (size_t) ;
 int EINVAL ;

 int ad5449_write (struct iio_dev*,int ,int) ;
 struct ad5449* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5449_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long info)
{
 struct ad5449 *st = iio_priv(indio_dev);
 int ret;

 switch (info) {
 case 128:
  if (val < 0 || val >= (1 << chan->scan_type.realbits))
   return -EINVAL;

  ret = ad5449_write(indio_dev,
   AD5449_CMD_LOAD_AND_UPDATE(chan->address),
   val << chan->scan_type.shift);
  if (ret == 0)
   st->dac_cache[chan->address] = val;
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
