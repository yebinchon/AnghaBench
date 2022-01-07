
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sar_adc_priv {int regmap; } ;
struct iio_dev {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ FIELD_GET (int ,int) ;
 int MESON_SAR_ADC_REG0 ;
 int MESON_SAR_ADC_REG0_BUSY_MASK ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;
 int udelay (int) ;

__attribute__((used)) static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int regval, timeout = 10000;






 do {
  udelay(1);
  regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
 } while (FIELD_GET(MESON_SAR_ADC_REG0_BUSY_MASK, regval) && timeout--);

 if (timeout < 0)
  return -ETIMEDOUT;

 return 0;
}
