
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc18xx_dac {int lock; scalar_t__ base; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 scalar_t__ LPC18XX_DAC_CR ;
 int LPC18XX_DAC_CR_BIAS ;
 int LPC18XX_DAC_CR_VALUE_MASK ;
 int LPC18XX_DAC_CR_VALUE_SHIFT ;
 scalar_t__ LPC18XX_DAC_CTRL ;
 int LPC18XX_DAC_CTRL_DMA_ENA ;
 struct lpc18xx_dac* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int lpc18xx_dac_write_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int val, int val2, long mask)
{
 struct lpc18xx_dac *dac = iio_priv(indio_dev);
 u32 reg;

 switch (mask) {
 case 128:
  if (val < 0 || val > LPC18XX_DAC_CR_VALUE_MASK)
   return -EINVAL;

  reg = LPC18XX_DAC_CR_BIAS;
  reg |= val << LPC18XX_DAC_CR_VALUE_SHIFT;

  mutex_lock(&dac->lock);
  writel(reg, dac->base + LPC18XX_DAC_CR);
  writel(LPC18XX_DAC_CTRL_DMA_ENA, dac->base + LPC18XX_DAC_CTRL);
  mutex_unlock(&dac->lock);

  return 0;
 }

 return -EINVAL;
}
