
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si1145_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; int type; int channel2; } ;


 int EINVAL ;



 int IIO_CURRENT ;

 int IIO_MOD_LIGHT_IR ;

 int SI1145_PARAM_ALSIR_ADC_COUNTER ;
 int SI1145_PARAM_ALSIR_ADC_GAIN ;
 int SI1145_PARAM_ALSVIS_ADC_COUNTER ;
 int SI1145_PARAM_ALSVIS_ADC_GAIN ;
 int SI1145_PARAM_PS_ADC_COUNTER ;
 int SI1145_PARAM_PS_ADC_GAIN ;
 int SI1145_PS_LED_REG (int ) ;
 int SI1145_PS_LED_SHIFT (int ) ;
 int i2c_smbus_read_byte_data (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct si1145_data* iio_priv (struct iio_dev*) ;
 int si1145_intensity_adcgain_from_scale (int,int) ;
 int si1145_param_set (struct si1145_data*,int,int) ;
 int si1145_proximity_adcgain_from_scale (int,int) ;
 int si1145_store_samp_freq (struct si1145_data*,int) ;

__attribute__((used)) static int si1145_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 struct si1145_data *data = iio_priv(indio_dev);
 u8 reg1, reg2, shift;
 int ret;

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 128:
   val = si1145_proximity_adcgain_from_scale(val, val2);
   if (val < 0)
    return val;
   reg1 = SI1145_PARAM_PS_ADC_GAIN;
   reg2 = SI1145_PARAM_PS_ADC_COUNTER;
   break;
  case 129:
   val = si1145_intensity_adcgain_from_scale(val, val2);
   if (val < 0)
    return val;
   if (chan->channel2 == IIO_MOD_LIGHT_IR) {
    reg1 = SI1145_PARAM_ALSIR_ADC_GAIN;
    reg2 = SI1145_PARAM_ALSIR_ADC_COUNTER;
   } else {
    reg1 = SI1145_PARAM_ALSVIS_ADC_GAIN;
    reg2 = SI1145_PARAM_ALSVIS_ADC_COUNTER;
   }
   break;
  default:
   return -EINVAL;
  }

  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = si1145_param_set(data, reg1, val);
  if (ret < 0) {
   iio_device_release_direct_mode(indio_dev);
   return ret;
  }

  ret = si1145_param_set(data, reg2, (~val & 0x07) << 4);
  iio_device_release_direct_mode(indio_dev);
  return ret;
 case 132:
  if (chan->type != IIO_CURRENT)
   return -EINVAL;

  if (val < 0 || val > 15 || val2 != 0)
   return -EINVAL;

  reg1 = SI1145_PS_LED_REG(chan->channel);
  shift = SI1145_PS_LED_SHIFT(chan->channel);

  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = i2c_smbus_read_byte_data(data->client, reg1);
  if (ret < 0) {
   iio_device_release_direct_mode(indio_dev);
   return ret;
  }
  ret = i2c_smbus_write_byte_data(data->client, reg1,
   (ret & ~(0x0f << shift)) |
   ((val & 0x0f) << shift));
  iio_device_release_direct_mode(indio_dev);
  return ret;
 case 131:
  return si1145_store_samp_freq(data, val);
 default:
  return -EINVAL;
 }
}
