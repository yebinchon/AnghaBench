
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_sar_adc_priv {int regmap; } ;
struct iio_dev {int dummy; } ;
typedef enum meson_sar_adc_chan7_mux_sel { ____Placeholder_meson_sar_adc_chan7_mux_sel } meson_sar_adc_chan7_mux_sel ;


 int FIELD_PREP (int ,int) ;
 int MESON_SAR_ADC_REG3 ;
 int MESON_SAR_ADC_REG3_CTRL_CHAN7_MUX_SEL_MASK ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void meson_sar_adc_set_chan7_mux(struct iio_dev *indio_dev,
     enum meson_sar_adc_chan7_mux_sel sel)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 u32 regval;

 regval = FIELD_PREP(MESON_SAR_ADC_REG3_CTRL_CHAN7_MUX_SEL_MASK, sel);
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG3,
      MESON_SAR_ADC_REG3_CTRL_CHAN7_MUX_SEL_MASK, regval);

 usleep_range(10, 20);
}
