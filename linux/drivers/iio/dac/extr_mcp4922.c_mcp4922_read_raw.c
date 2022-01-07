
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp4922_state {int* value; int vref_mv; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {size_t channel; TYPE_1__ scan_type; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct mcp4922_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int mcp4922_read_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  int *val,
  int *val2,
  long mask)
{
 struct mcp4922_state *state = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  *val = state->value[chan->channel];
  return IIO_VAL_INT;
 case 128:
  *val = state->vref_mv;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
