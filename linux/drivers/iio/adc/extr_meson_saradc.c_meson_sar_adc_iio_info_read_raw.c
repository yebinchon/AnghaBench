
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct meson_sar_adc_priv {int calibbias; int calibscale; int temperature_sensor_adc_val; TYPE_2__* param; int vref; } ;
struct TYPE_3__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct iio_chan_spec {int type; } ;
struct TYPE_4__ {int resolution; int temperature_multiplier; int temperature_divider; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EIGHT_SAMPLES ;
 int EINVAL ;






 int IIO_TEMP ;
 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VOLTAGE ;
 int MEAN_AVERAGING ;
 int MESON_SAR_ADC_TEMP_OFFSET ;
 int MILLION ;
 int NO_AVERAGING ;
 int ONE_SAMPLE ;
 int dev_err (int ,char*,int) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_get_sample (struct iio_dev*,struct iio_chan_spec const*,int ,int ,int*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int meson_sar_adc_iio_info_read_raw(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        int *val, int *val2, long mask)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  return meson_sar_adc_get_sample(indio_dev, chan, NO_AVERAGING,
      ONE_SAMPLE, val);
  break;

 case 133:
  return meson_sar_adc_get_sample(indio_dev, chan,
      MEAN_AVERAGING, EIGHT_SAMPLES,
      val);
  break;

 case 128:
  if (chan->type == IIO_VOLTAGE) {
   ret = regulator_get_voltage(priv->vref);
   if (ret < 0) {
    dev_err(indio_dev->dev.parent,
     "failed to get vref voltage: %d\n",
     ret);
    return ret;
   }

   *val = ret / 1000;
   *val2 = priv->param->resolution;
   return IIO_VAL_FRACTIONAL_LOG2;
  } else if (chan->type == IIO_TEMP) {

   *val = priv->param->temperature_multiplier;
   *val2 = priv->param->temperature_divider;


   *val *= 1000;

   return IIO_VAL_FRACTIONAL;
  } else {
   return -EINVAL;
  }

 case 132:
  *val = priv->calibbias;
  return IIO_VAL_INT;

 case 131:
  *val = priv->calibscale / MILLION;
  *val2 = priv->calibscale % MILLION;
  return IIO_VAL_INT_PLUS_MICRO;

 case 130:
  *val = DIV_ROUND_CLOSEST(MESON_SAR_ADC_TEMP_OFFSET *
      priv->param->temperature_divider,
      priv->param->temperature_multiplier);
  *val -= priv->temperature_sensor_adc_val;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
