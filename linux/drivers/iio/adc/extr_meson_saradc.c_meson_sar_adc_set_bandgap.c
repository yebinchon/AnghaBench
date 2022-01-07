
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_sar_adc_priv {int regmap; struct meson_sar_adc_param* param; } ;
struct meson_sar_adc_param {scalar_t__ bandgap_reg; } ;
struct iio_dev {int dummy; } ;


 int MESON_SAR_ADC_DELTA_10_TS_VBG_EN ;
 scalar_t__ MESON_SAR_ADC_REG11 ;
 int MESON_SAR_ADC_REG11_BANDGAP_EN ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void meson_sar_adc_set_bandgap(struct iio_dev *indio_dev, bool on_off)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 const struct meson_sar_adc_param *param = priv->param;
 u32 enable_mask;

 if (param->bandgap_reg == MESON_SAR_ADC_REG11)
  enable_mask = MESON_SAR_ADC_REG11_BANDGAP_EN;
 else
  enable_mask = MESON_SAR_ADC_DELTA_10_TS_VBG_EN;

 regmap_update_bits(priv->regmap, param->bandgap_reg, enable_mask,
      on_off ? enable_mask : 0);
}
