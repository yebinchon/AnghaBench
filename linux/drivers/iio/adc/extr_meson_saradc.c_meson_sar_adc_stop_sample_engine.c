
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sar_adc_priv {int regmap; } ;
struct iio_dev {int dummy; } ;


 int MESON_SAR_ADC_REG0 ;
 int MESON_SAR_ADC_REG0_FIFO_IRQ_EN ;
 int MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE ;
 int MESON_SAR_ADC_REG0_SAMPLING_STOP ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_wait_busy_clear (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void meson_sar_adc_stop_sample_engine(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
      MESON_SAR_ADC_REG0_FIFO_IRQ_EN, 0);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
      MESON_SAR_ADC_REG0_SAMPLING_STOP,
      MESON_SAR_ADC_REG0_SAMPLING_STOP);


 meson_sar_adc_wait_busy_clear(indio_dev);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
      MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE, 0);
}
