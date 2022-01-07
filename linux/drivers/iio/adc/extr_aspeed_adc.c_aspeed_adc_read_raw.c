
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ address; } ;
struct aspeed_adc_model_data {int vref_voltage; } ;
struct aspeed_adc_data {TYPE_1__* clk_scaler; scalar_t__ base; int dev; } ;
struct TYPE_2__ {int clk; } ;


 int ASPEED_CLOCKS_PER_SAMPLE ;
 int ASPEED_RESOLUTION_BITS ;
 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int clk_get_rate (int ) ;
 struct aspeed_adc_data* iio_priv (struct iio_dev*) ;
 struct aspeed_adc_model_data* of_device_get_match_data (int ) ;
 int readw (scalar_t__) ;

__attribute__((used)) static int aspeed_adc_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int *val, int *val2, long mask)
{
 struct aspeed_adc_data *data = iio_priv(indio_dev);
 const struct aspeed_adc_model_data *model_data =
   of_device_get_match_data(data->dev);

 switch (mask) {
 case 130:
  *val = readw(data->base + chan->address);
  return IIO_VAL_INT;

 case 128:
  *val = model_data->vref_voltage;
  *val2 = ASPEED_RESOLUTION_BITS;
  return IIO_VAL_FRACTIONAL_LOG2;

 case 129:
  *val = clk_get_rate(data->clk_scaler->clk) /
    ASPEED_CLOCKS_PER_SAMPLE;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
