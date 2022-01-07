
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct meson_sar_adc_priv {int vref; int core_clk; int regmap; int adc_clk; } ;
struct TYPE_2__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;


 int FIELD_PREP (int ,int) ;
 int MESON_SAR_ADC_REG0 ;
 int MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK ;
 int MESON_SAR_ADC_REG3 ;
 int MESON_SAR_ADC_REG3_ADC_EN ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_lock (struct iio_dev*) ;
 int meson_sar_adc_set_bandgap (struct iio_dev*,int) ;
 int meson_sar_adc_unlock (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int udelay (int) ;

__attribute__((used)) static int meson_sar_adc_hw_enable(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int ret;
 u32 regval;

 ret = meson_sar_adc_lock(indio_dev);
 if (ret)
  goto err_lock;

 ret = regulator_enable(priv->vref);
 if (ret < 0) {
  dev_err(indio_dev->dev.parent,
   "failed to enable vref regulator\n");
  goto err_vref;
 }

 ret = clk_prepare_enable(priv->core_clk);
 if (ret) {
  dev_err(indio_dev->dev.parent, "failed to enable core clk\n");
  goto err_core_clk;
 }

 regval = FIELD_PREP(MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, 1);
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG0,
      MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, regval);

 meson_sar_adc_set_bandgap(indio_dev, 1);

 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG3,
      MESON_SAR_ADC_REG3_ADC_EN,
      MESON_SAR_ADC_REG3_ADC_EN);

 udelay(5);

 ret = clk_prepare_enable(priv->adc_clk);
 if (ret) {
  dev_err(indio_dev->dev.parent, "failed to enable adc clk\n");
  goto err_adc_clk;
 }

 meson_sar_adc_unlock(indio_dev);

 return 0;

err_adc_clk:
 regmap_update_bits(priv->regmap, MESON_SAR_ADC_REG3,
      MESON_SAR_ADC_REG3_ADC_EN, 0);
 meson_sar_adc_set_bandgap(indio_dev, 0);
 clk_disable_unprepare(priv->core_clk);
err_core_clk:
 regulator_disable(priv->vref);
err_vref:
 meson_sar_adc_unlock(indio_dev);
err_lock:
 return ret;
}
