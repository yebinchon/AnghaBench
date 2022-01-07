
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc18xx_dac {int vref; scalar_t__ base; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 scalar_t__ LPC18XX_DAC_CR ;
 int LPC18XX_DAC_CR_VALUE_MASK ;
 int LPC18XX_DAC_CR_VALUE_SHIFT ;
 struct lpc18xx_dac* iio_priv (struct iio_dev*) ;
 int readl (scalar_t__) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int lpc18xx_dac_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct lpc18xx_dac *dac = iio_priv(indio_dev);
 u32 reg;

 switch (mask) {
 case 129:
  reg = readl(dac->base + LPC18XX_DAC_CR);
  *val = reg >> LPC18XX_DAC_CR_VALUE_SHIFT;
  *val &= LPC18XX_DAC_CR_VALUE_MASK;

  return IIO_VAL_INT;

 case 128:
  *val = regulator_get_voltage(dac->vref) / 1000;
  *val2 = 10;

  return IIO_VAL_FRACTIONAL_LOG2;
 }

 return -EINVAL;
}
