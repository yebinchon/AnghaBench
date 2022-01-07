
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int at91_adc_trigger_handler ;
 int iio_pollfunc_store_time ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;

__attribute__((used)) static int at91_adc_buffer_init(struct iio_dev *idev)
{
 return iio_triggered_buffer_setup(idev, &iio_pollfunc_store_time,
  &at91_adc_trigger_handler, ((void*)0));
}
