
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct aspeed_adc_model_data {int min_sampling_rate; int max_sampling_rate; } ;
struct aspeed_adc_data {TYPE_1__* clk_scaler; int dev; } ;
struct TYPE_2__ {int clk; } ;


 int ASPEED_CLOCKS_PER_SAMPLE ;
 int EINVAL ;
 int EPERM ;



 int clk_set_rate (int ,int) ;
 struct aspeed_adc_data* iio_priv (struct iio_dev*) ;
 struct aspeed_adc_model_data* of_device_get_match_data (int ) ;

__attribute__((used)) static int aspeed_adc_write_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int val, int val2, long mask)
{
 struct aspeed_adc_data *data = iio_priv(indio_dev);
 const struct aspeed_adc_model_data *model_data =
   of_device_get_match_data(data->dev);

 switch (mask) {
 case 129:
  if (val < model_data->min_sampling_rate ||
   val > model_data->max_sampling_rate)
   return -EINVAL;

  clk_set_rate(data->clk_scaler->clk,
    val * ASPEED_CLOCKS_PER_SAMPLE);
  return 0;

 case 128:
 case 130:






  return -EPERM;

 default:
  return -EINVAL;
 }
}
