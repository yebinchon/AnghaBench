
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_sar_adc_priv {int regmap; } ;
struct iio_dev {int dummy; } ;


 unsigned int FIELD_GET (int ,int ) ;
 int MESON_SAR_ADC_REG0 ;
 int MESON_SAR_ADC_REG0_FIFO_COUNT_MASK ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static unsigned int meson_sar_adc_get_fifo_count(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 u32 regval;

 regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);

 return FIELD_GET(MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, regval);
}
