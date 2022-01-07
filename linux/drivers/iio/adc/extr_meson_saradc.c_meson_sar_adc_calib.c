
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_sar_adc_priv {int calibscale; scalar_t__ calibbias; TYPE_1__* param; } ;
struct iio_dev {int * channels; } ;
typedef int s64 ;
struct TYPE_2__ {int resolution; } ;


 int CHAN7_MUX_CH7_INPUT ;
 int CHAN7_MUX_VDD_DIV4 ;
 int CHAN7_MUX_VDD_MUL3_DIV4 ;
 int EIGHT_SAMPLES ;
 int EINVAL ;
 int MEAN_AVERAGING ;
 int MILLION ;
 int div_s64 (int,int) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_get_sample (struct iio_dev*,int *,int ,int ,int*) ;
 int meson_sar_adc_set_chan7_mux (struct iio_dev*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int meson_sar_adc_calib(struct iio_dev *indio_dev)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int ret, nominal0, nominal1, value0, value1;


 nominal0 = (1 << priv->param->resolution) / 4;
 nominal1 = (1 << priv->param->resolution) * 3 / 4;

 meson_sar_adc_set_chan7_mux(indio_dev, CHAN7_MUX_VDD_DIV4);
 usleep_range(10, 20);
 ret = meson_sar_adc_get_sample(indio_dev,
           &indio_dev->channels[7],
           MEAN_AVERAGING, EIGHT_SAMPLES, &value0);
 if (ret < 0)
  goto out;

 meson_sar_adc_set_chan7_mux(indio_dev, CHAN7_MUX_VDD_MUL3_DIV4);
 usleep_range(10, 20);
 ret = meson_sar_adc_get_sample(indio_dev,
           &indio_dev->channels[7],
           MEAN_AVERAGING, EIGHT_SAMPLES, &value1);
 if (ret < 0)
  goto out;

 if (value1 <= value0) {
  ret = -EINVAL;
  goto out;
 }

 priv->calibscale = div_s64((nominal1 - nominal0) * (s64)MILLION,
       value1 - value0);
 priv->calibbias = nominal0 - div_s64((s64)value0 * priv->calibscale,
          MILLION);
 ret = 0;
out:
 meson_sar_adc_set_chan7_mux(indio_dev, CHAN7_MUX_CH7_INPUT);

 return ret;
}
