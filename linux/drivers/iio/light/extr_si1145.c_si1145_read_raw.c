
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si1145_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel2; int channel; } ;


 int EINVAL ;






 int IIO_MOD_LIGHT_IR ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;

 int SI1145_PARAM_ADC_OFFSET ;
 int SI1145_PARAM_ALSIR_ADC_GAIN ;
 int SI1145_PARAM_ALSVIS_ADC_GAIN ;
 int SI1145_PARAM_PS_ADC_GAIN ;
 int SI1145_PS_LED_REG (int ) ;
 int SI1145_PS_LED_SHIFT (int ) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct si1145_data* iio_priv (struct iio_dev*) ;
 int si1145_measure (struct iio_dev*,struct iio_chan_spec const*) ;
 int si1145_param_query (struct si1145_data*,int ) ;
 int si1145_read_samp_freq (struct si1145_data*,int*,int*) ;
 int si1145_scale_from_adcgain (int) ;
 int si1145_uncompress (int) ;

__attribute__((used)) static int si1145_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct si1145_data *data = iio_priv(indio_dev);
 int ret;
 u8 reg;

 switch (mask) {
 case 136:
  switch (chan->type) {
  case 132:
  case 131:
  case 128:
  case 130:
  case 129:
   ret = iio_device_claim_direct_mode(indio_dev);
   if (ret)
    return ret;
   ret = si1145_measure(indio_dev, chan);
   iio_device_release_direct_mode(indio_dev);

   if (ret < 0)
    return ret;

   *val = ret;

   return IIO_VAL_INT;
  case 133:
   ret = i2c_smbus_read_byte_data(data->client,
    SI1145_PS_LED_REG(chan->channel));
   if (ret < 0)
    return ret;

   *val = (ret >> SI1145_PS_LED_SHIFT(chan->channel))
    & 0x0f;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 134:
  switch (chan->type) {
  case 131:
   reg = SI1145_PARAM_PS_ADC_GAIN;
   break;
  case 132:
   if (chan->channel2 == IIO_MOD_LIGHT_IR)
    reg = SI1145_PARAM_ALSIR_ADC_GAIN;
   else
    reg = SI1145_PARAM_ALSVIS_ADC_GAIN;
   break;
  case 130:
   *val = 28;
   *val2 = 571429;
   return IIO_VAL_INT_PLUS_MICRO;
  case 129:
   *val = 0;
   *val2 = 10000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }

  ret = si1145_param_query(data, reg);
  if (ret < 0)
   return ret;

  *val = si1145_scale_from_adcgain(ret & 0x07);

  return IIO_VAL_INT;
 case 137:
  switch (chan->type) {
  case 130:




   *val = -256 - 11136 + 25 * 35;
   return IIO_VAL_INT;
  default:





   ret = si1145_param_query(data, SI1145_PARAM_ADC_OFFSET);
   if (ret < 0)
    return ret;
   *val = -si1145_uncompress(ret);
   return IIO_VAL_INT;
  }
 case 135:
  return si1145_read_samp_freq(data, val, val2);
 default:
  return -EINVAL;
 }
}
