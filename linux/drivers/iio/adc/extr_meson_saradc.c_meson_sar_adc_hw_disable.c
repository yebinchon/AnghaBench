
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sar_adc_priv {int vref; int core_clk; int regmap; int adc_clk; } ;
struct iio_dev {int dummy; } ;


 int MESON_SAR_ADC_REG3 ;
 int MESON_SAR_ADC_REG3_ADC_EN ;
 int clk_disable_unprepare (int ) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_lock (struct iio_dev*) ;
 int meson_sar_adc_set_bandgap (struct iio_dev*,int) ;
 int meson_sar_adc_unlock (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int meson_sar_adc_hw_disable(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int ret;

 ret = meson_sar_adc_lock(indio_dev);
 if (ret)
  return ret;

 clk_disable_unprepare(priv->adc_clk);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG3,
      MESON_SAR_ADC_REG3_ADC_EN, 0);

 meson_sar_adc_set_bandgap(indio_dev, 0);

 clk_disable_unprepare(priv->core_clk);

 regulator_disable(priv->vref);

 meson_sar_adc_unlock(indio_dev);

 return 0;
}
