
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sar_adc_priv {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
typedef enum meson_sar_adc_num_samples { ____Placeholder_meson_sar_adc_num_samples } meson_sar_adc_num_samples ;
typedef enum meson_sar_adc_avg_mode { ____Placeholder_meson_sar_adc_avg_mode } meson_sar_adc_avg_mode ;


 int MESON_SAR_ADC_AVG_CNTL ;
 int MESON_SAR_ADC_AVG_CNTL_AVG_MODE_MASK (int) ;
 int MESON_SAR_ADC_AVG_CNTL_AVG_MODE_SHIFT (int) ;
 int MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_MASK (int) ;
 int MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_SHIFT (int) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static void meson_sar_adc_set_averaging(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan,
     enum meson_sar_adc_avg_mode mode,
     enum meson_sar_adc_num_samples samples)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int val, address = chan->address;

 val = samples << MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_SHIFT(address);
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_AVG_CNTL,
      MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_MASK(address),
      val);

 val = mode << MESON_SAR_ADC_AVG_CNTL_AVG_MODE_SHIFT(address);
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_AVG_CNTL,
      MESON_SAR_ADC_AVG_CNTL_AVG_MODE_MASK(address), val);
}
