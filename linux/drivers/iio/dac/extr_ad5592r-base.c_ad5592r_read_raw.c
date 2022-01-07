
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iio_dev {int mlock; } ;
struct TYPE_4__ {int realbits; } ;
struct iio_chan_spec {int channel; TYPE_2__ scan_type; int output; int type; } ;
struct ad5592r_state {int* cached_dac; int cached_gp_ctrl; int dev; TYPE_1__* ops; } ;
typedef int s64 ;
struct TYPE_3__ {int (* read_adc ) (struct ad5592r_state*,int,int*) ;} ;


 int AD5592R_REG_CTRL_ADC_RANGE ;
 int AD5592R_REG_CTRL_DAC_RANGE ;
 int EINVAL ;
 int EIO ;
 int GENMASK (int,int ) ;



 int IIO_TEMP ;
 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int ad5592r_get_vref (struct ad5592r_state*) ;
 int dev_dbg (int ,char*,size_t,int) ;
 int dev_err (int ,char*,int) ;
 int div_s64_rem (int,long long,int*) ;
 struct ad5592r_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5592r_state*,int,int*) ;

__attribute__((used)) static int ad5592r_read_raw(struct iio_dev *iio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long m)
{
 struct ad5592r_state *st = iio_priv(iio_dev);
 u16 read_val;
 int ret;

 switch (m) {
 case 129:
  mutex_lock(&iio_dev->mlock);

  if (!chan->output) {
   ret = st->ops->read_adc(st, chan->channel, &read_val);
   if (ret)
    goto unlock;

   if ((read_val >> 12 & 0x7) != (chan->channel & 0x7)) {
    dev_err(st->dev, "Error while reading channel %u\n",
      chan->channel);
    ret = -EIO;
    goto unlock;
   }

   read_val &= GENMASK(11, 0);

  } else {
   read_val = st->cached_dac[chan->channel];
  }

  dev_dbg(st->dev, "Channel %u read: 0x%04hX\n",
    chan->channel, read_val);

  *val = (int) read_val;
  ret = IIO_VAL_INT;
  break;
 case 128:
  *val = ad5592r_get_vref(st);

  if (chan->type == IIO_TEMP) {
   s64 tmp = *val * (3767897513LL / 25LL);
   *val = div_s64_rem(tmp, 1000000000LL, val2);

   ret = IIO_VAL_INT_PLUS_MICRO;
  } else {
   int mult;

   mutex_lock(&iio_dev->mlock);

   if (chan->output)
    mult = !!(st->cached_gp_ctrl &
     AD5592R_REG_CTRL_DAC_RANGE);
   else
    mult = !!(st->cached_gp_ctrl &
     AD5592R_REG_CTRL_ADC_RANGE);

   *val *= ++mult;

   *val2 = chan->scan_type.realbits;
   ret = IIO_VAL_FRACTIONAL_LOG2;
  }
  break;
 case 130:
  ret = ad5592r_get_vref(st);

  mutex_lock(&iio_dev->mlock);

  if (st->cached_gp_ctrl & AD5592R_REG_CTRL_ADC_RANGE)
   *val = (-34365 * 25) / ret;
  else
   *val = (-75365 * 25) / ret;
  ret = IIO_VAL_INT;
  break;
 default:
  ret = -EINVAL;
 }

unlock:
 mutex_unlock(&iio_dev->mlock);
 return ret;
}
