
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_saradc {int last_val; TYPE_1__* data; int vref; scalar_t__ regs; int completion; } ;
struct iio_dev {int dev; int mlock; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int num_bits; } ;


 int EINVAL ;
 int ETIMEDOUT ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 scalar_t__ SARADC_CTRL ;
 int SARADC_CTRL_CHN_MASK ;
 int SARADC_CTRL_IRQ_ENABLE ;
 int SARADC_CTRL_POWER_CTRL ;
 scalar_t__ SARADC_DLY_PU_SOC ;
 int SARADC_TIMEOUT ;
 int dev_err (int *,char*) ;
 struct rockchip_saradc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct rockchip_saradc *info = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&indio_dev->mlock);

  reinit_completion(&info->completion);


  writel_relaxed(8, info->regs + SARADC_DLY_PU_SOC);


  writel(SARADC_CTRL_POWER_CTRL
    | (chan->channel & SARADC_CTRL_CHN_MASK)
    | SARADC_CTRL_IRQ_ENABLE,
         info->regs + SARADC_CTRL);

  if (!wait_for_completion_timeout(&info->completion,
       SARADC_TIMEOUT)) {
   writel_relaxed(0, info->regs + SARADC_CTRL);
   mutex_unlock(&indio_dev->mlock);
   return -ETIMEDOUT;
  }

  *val = info->last_val;
  mutex_unlock(&indio_dev->mlock);
  return IIO_VAL_INT;
 case 128:
  ret = regulator_get_voltage(info->vref);
  if (ret < 0) {
   dev_err(&indio_dev->dev, "failed to get voltage\n");
   return ret;
  }

  *val = ret / 1000;
  *val2 = info->data->num_bits;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
