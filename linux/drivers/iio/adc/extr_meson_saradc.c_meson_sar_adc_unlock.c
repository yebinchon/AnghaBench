
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_sar_adc_priv {int regmap; TYPE_1__* param; } ;
struct iio_dev {int mlock; } ;
struct TYPE_2__ {scalar_t__ has_bl30_integration; } ;


 int MESON_SAR_ADC_DELAY ;
 int MESON_SAR_ADC_DELAY_KERNEL_BUSY ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void meson_sar_adc_unlock(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);

 if (priv->param->has_bl30_integration)

  regmap_update_bits(priv->regmap, MESON_SAR_ADC_DELAY,
    MESON_SAR_ADC_DELAY_KERNEL_BUSY, 0);

 mutex_unlock(&indio_dev->mlock);
}
