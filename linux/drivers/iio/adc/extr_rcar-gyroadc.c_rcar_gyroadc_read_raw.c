
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct rcar_gyroadc {scalar_t__ mode; int sample_width; int regs; struct regulator** vref; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; int type; } ;


 int BIT (int) ;
 int EINVAL ;



 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VOLTAGE ;
 scalar_t__ RCAR_GYROADC_MODE_SELECT_1_MB88101A ;
 unsigned int RCAR_GYROADC_REALTIME_DATA (size_t) ;
 int RCAR_GYROADC_SAMPLE_RATE ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct rcar_gyroadc* iio_priv (struct iio_dev*) ;
 int rcar_gyroadc_set_power (struct rcar_gyroadc*,int) ;
 int readl (int ) ;
 unsigned int regulator_get_voltage (struct regulator*) ;

__attribute__((used)) static int rcar_gyroadc_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct rcar_gyroadc *priv = iio_priv(indio_dev);
 struct regulator *consumer;
 unsigned int datareg = RCAR_GYROADC_REALTIME_DATA(chan->channel);
 unsigned int vref;
 int ret;





 if (priv->mode == RCAR_GYROADC_MODE_SELECT_1_MB88101A)
  consumer = priv->vref[0];
 else
  consumer = priv->vref[chan->channel];

 switch (mask) {
 case 130:
  if (chan->type != IIO_VOLTAGE)
   return -EINVAL;


  if (!consumer)
   return -EINVAL;

  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = rcar_gyroadc_set_power(priv, 1);
  if (ret < 0) {
   iio_device_release_direct_mode(indio_dev);
   return ret;
  }

  *val = readl(priv->regs + datareg);
  *val &= BIT(priv->sample_width) - 1;

  ret = rcar_gyroadc_set_power(priv, 0);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;
 case 128:

  if (!consumer)
   return -EINVAL;

  vref = regulator_get_voltage(consumer);
  *val = vref / 1000;
  *val2 = 1 << priv->sample_width;

  return IIO_VAL_FRACTIONAL;
 case 129:
  *val = RCAR_GYROADC_SAMPLE_RATE;

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
