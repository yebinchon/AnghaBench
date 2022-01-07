
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp4922_state {int* value; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {size_t channel; TYPE_1__ scan_type; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;

 struct mcp4922_state* iio_priv (struct iio_dev*) ;
 int mcp4922_spi_write (struct mcp4922_state*,size_t,int) ;

__attribute__((used)) static int mcp4922_write_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  int val,
  int val2,
  long mask)
{
 struct mcp4922_state *state = iio_priv(indio_dev);
 int ret;

 if (val2 != 0)
  return -EINVAL;

 switch (mask) {
 case 128:
  if (val < 0 || val > GENMASK(chan->scan_type.realbits - 1, 0))
   return -EINVAL;
  val <<= chan->scan_type.shift;

  ret = mcp4922_spi_write(state, chan->channel, val);
  if (!ret)
   state->value[chan->channel] = val;
  return ret;

 default:
  return -EINVAL;
 }
}
