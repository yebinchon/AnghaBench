
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ingenic_adc {TYPE_1__* soc_data; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int battery_raw_avail_size; int* battery_raw_avail; int battery_scale_avail_size; int* battery_scale_avail; } ;


 int EINVAL ;
 int IIO_AVAIL_LIST ;
 int IIO_AVAIL_RANGE ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct ingenic_adc* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ingenic_adc_read_avail(struct iio_dev *iio_dev,
      struct iio_chan_spec const *chan,
      const int **vals,
      int *type,
      int *length,
      long m)
{
 struct ingenic_adc *adc = iio_priv(iio_dev);

 switch (m) {
 case 129:
  *type = IIO_VAL_INT;
  *length = adc->soc_data->battery_raw_avail_size;
  *vals = adc->soc_data->battery_raw_avail;
  return IIO_AVAIL_RANGE;
 case 128:
  *type = IIO_VAL_FRACTIONAL_LOG2;
  *length = adc->soc_data->battery_scale_avail_size;
  *vals = adc->soc_data->battery_scale_avail;
  return IIO_AVAIL_LIST;
 default:
  return -EINVAL;
 };
}
