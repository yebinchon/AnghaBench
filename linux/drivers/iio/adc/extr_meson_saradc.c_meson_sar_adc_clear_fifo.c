
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sar_adc_priv {int regmap; } ;
struct iio_dev {int dummy; } ;


 int MESON_SAR_ADC_FIFO_RD ;
 unsigned int MESON_SAR_ADC_MAX_FIFO_SIZE ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_get_fifo_count (struct iio_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static void meson_sar_adc_clear_fifo(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 unsigned int count, tmp;

 for (count = 0; count < MESON_SAR_ADC_MAX_FIFO_SIZE; count++) {
  if (!meson_sar_adc_get_fifo_count(indio_dev))
   break;

  regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &tmp);
 }
}
