
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_sar_adc_priv {int calibscale; int calibbias; TYPE_1__* param; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;
struct TYPE_2__ {int resolution; } ;


 int MILLION ;
 int clamp (int,int ,int) ;
 int div_s64 (int,int ) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int meson_sar_adc_calib_val(struct iio_dev *indio_dev, int val)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int tmp;


 tmp = div_s64((s64)val * priv->calibscale, MILLION) + priv->calibbias;

 return clamp(tmp, 0, (1 << priv->param->resolution) - 1);
}
