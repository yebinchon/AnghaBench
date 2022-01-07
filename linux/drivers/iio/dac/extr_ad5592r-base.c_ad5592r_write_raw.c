
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_3__ {int realbits; } ;
struct iio_chan_spec {size_t channel; int output; int type; TYPE_1__ scan_type; } ;
struct ad5592r_state {int* cached_dac; int** scale_avail; int cached_gp_ctrl; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* write_dac ) (struct ad5592r_state*,size_t,int) ;int (* reg_read ) (struct ad5592r_state*,int ,int *) ;int (* reg_write ) (struct ad5592r_state*,int ,int ) ;} ;


 int AD5592R_REG_CTRL ;
 int AD5592R_REG_CTRL_ADC_RANGE ;
 int AD5592R_REG_CTRL_DAC_RANGE ;
 int EINVAL ;


 int IIO_VOLTAGE ;
 struct ad5592r_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5592r_state*,size_t,int) ;
 int stub2 (struct ad5592r_state*,int ,int *) ;
 int stub3 (struct ad5592r_state*,int ,int ) ;

__attribute__((used)) static int ad5592r_write_raw(struct iio_dev *iio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct ad5592r_state *st = iio_priv(iio_dev);
 int ret;

 switch (mask) {
 case 129:

  if (val >= (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  if (!chan->output)
   return -EINVAL;

  mutex_lock(&iio_dev->mlock);
  ret = st->ops->write_dac(st, chan->channel, val);
  if (!ret)
   st->cached_dac[chan->channel] = val;
  mutex_unlock(&iio_dev->mlock);
  return ret;
 case 128:
  if (chan->type == IIO_VOLTAGE) {
   bool gain;

   if (val == st->scale_avail[0][0] &&
    val2 == st->scale_avail[0][1])
    gain = 0;
   else if (val == st->scale_avail[1][0] &&
     val2 == st->scale_avail[1][1])
    gain = 1;
   else
    return -EINVAL;

   mutex_lock(&iio_dev->mlock);

   ret = st->ops->reg_read(st, AD5592R_REG_CTRL,
      &st->cached_gp_ctrl);
   if (ret < 0) {
    mutex_unlock(&iio_dev->mlock);
    return ret;
   }

   if (chan->output) {
    if (gain)
     st->cached_gp_ctrl |=
      AD5592R_REG_CTRL_DAC_RANGE;
    else
     st->cached_gp_ctrl &=
      ~AD5592R_REG_CTRL_DAC_RANGE;
   } else {
    if (gain)
     st->cached_gp_ctrl |=
      AD5592R_REG_CTRL_ADC_RANGE;
    else
     st->cached_gp_ctrl &=
      ~AD5592R_REG_CTRL_ADC_RANGE;
   }

   ret = st->ops->reg_write(st, AD5592R_REG_CTRL,
       st->cached_gp_ctrl);
   mutex_unlock(&iio_dev->mlock);

   return ret;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
