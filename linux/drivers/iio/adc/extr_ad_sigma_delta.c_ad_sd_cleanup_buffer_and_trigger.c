
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int ad_sd_remove_trigger (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;

void ad_sd_cleanup_buffer_and_trigger(struct iio_dev *indio_dev)
{
 ad_sd_remove_trigger(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
}
