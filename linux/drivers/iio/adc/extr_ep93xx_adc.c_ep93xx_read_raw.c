
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int dev; } ;
struct iio_chan_spec {int address; int channel; } ;
struct ep93xx_adc_priv {int lock; scalar_t__ base; int lastch; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 scalar_t__ EP93XX_ADC_RESULT ;
 int EP93XX_ADC_SDR ;
 scalar_t__ EP93XX_ADC_SWITCH ;
 scalar_t__ EP93XX_ADC_SW_LOCK ;
 int ETIMEDOUT ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int cpu_relax () ;
 int dev_err (int *,char*) ;
 int ep93xx_adc_delay (int,int) ;
 struct ep93xx_adc_priv* iio_priv (struct iio_dev*) ;
 scalar_t__ jiffies ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl_relaxed (scalar_t__) ;
 int sign_extend32 (int,int) ;
 int time_after (scalar_t__,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int ep93xx_read_raw(struct iio_dev *iiodev,
      struct iio_chan_spec const *channel, int *value,
      int *shift, long mask)
{
 struct ep93xx_adc_priv *priv = iio_priv(iiodev);
 unsigned long timeout;
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&priv->lock);
  if (priv->lastch != channel->channel) {
   priv->lastch = channel->channel;




   local_irq_disable();
   writel_relaxed(0xAA, priv->base + EP93XX_ADC_SW_LOCK);
   writel_relaxed(channel->address,
           priv->base + EP93XX_ADC_SWITCH);
   local_irq_enable();




   ep93xx_adc_delay(2000, 2000);
  }

  readl_relaxed(priv->base + EP93XX_ADC_RESULT);

  ep93xx_adc_delay(DIV_ROUND_UP(1000000, 925),
     DIV_ROUND_UP(1000000, 925));

  ret = IIO_VAL_INT;
  timeout = jiffies + msecs_to_jiffies(1) + 1;
  while (1) {
   u32 t;

   t = readl_relaxed(priv->base + EP93XX_ADC_RESULT);
   if (t & EP93XX_ADC_SDR) {
    *value = sign_extend32(t, 15);
    break;
   }

   if (time_after(jiffies, timeout)) {
    dev_err(&iiodev->dev, "Conversion timeout\n");
    ret = -ETIMEDOUT;
    break;
   }

   cpu_relax();
  }
  mutex_unlock(&priv->lock);
  return ret;

 case 130:

  *value = 25000;
  return IIO_VAL_INT;

 case 128:

  *value = (1ULL << 32) * 3300 / 50000;
  *shift = 32;
  return IIO_VAL_FRACTIONAL_LOG2;
 }

 return -EINVAL;
}
