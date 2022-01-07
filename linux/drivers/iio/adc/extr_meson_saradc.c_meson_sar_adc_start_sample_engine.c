
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sar_adc_priv {int regmap; int done; } ;
struct iio_dev {int dummy; } ;


 int MESON_SAR_ADC_REG0 ;
 int MESON_SAR_ADC_REG0_FIFO_IRQ_EN ;
 int MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE ;
 int MESON_SAR_ADC_REG0_SAMPLING_START ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reinit_completion (int *) ;

__attribute__((used)) static void meson_sar_adc_start_sample_engine(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);

 reinit_completion(&priv->done);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
      MESON_SAR_ADC_REG0_FIFO_IRQ_EN,
      MESON_SAR_ADC_REG0_FIFO_IRQ_EN);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
      MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE,
      MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
      MESON_SAR_ADC_REG0_SAMPLING_START,
      MESON_SAR_ADC_REG0_SAMPLING_START);
}
