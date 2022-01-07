
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_sar_adc_priv {int done; int regmap; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 unsigned int FIELD_GET (int ,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MESON_SAR_ADC_REG0 ;
 int MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK ;
 int MESON_SAR_ADC_REG0_FIFO_COUNT_MASK ;
 int complete (int *) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static irqreturn_t meson_sar_adc_irq(int irq, void *data)
{
 struct iio_dev *indio_dev = data;
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 unsigned int cnt, threshold;
 u32 regval;

 regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
 cnt = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, regval);
 threshold = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, regval);

 if (cnt < threshold)
  return IRQ_NONE;

 complete(&priv->done);

 return IRQ_HANDLED;
}
