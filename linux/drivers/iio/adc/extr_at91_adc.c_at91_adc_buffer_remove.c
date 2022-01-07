
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_triggered_buffer_cleanup (struct iio_dev*) ;

__attribute__((used)) static void at91_adc_buffer_remove(struct iio_dev *idev)
{
 iio_triggered_buffer_cleanup(idev);
}
