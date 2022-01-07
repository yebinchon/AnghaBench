
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int ad_sd_buffer_setup_ops ;
 int ad_sd_probe_trigger (struct iio_dev*) ;
 int ad_sd_trigger_handler ;
 int iio_pollfunc_store_time ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;

int ad_sd_setup_buffer_and_trigger(struct iio_dev *indio_dev)
{
 int ret;

 ret = iio_triggered_buffer_setup(indio_dev, &iio_pollfunc_store_time,
   &ad_sd_trigger_handler, &ad_sd_buffer_setup_ops);
 if (ret)
  return ret;

 ret = ad_sd_probe_trigger(indio_dev);
 if (ret) {
  iio_triggered_buffer_cleanup(indio_dev);
  return ret;
 }

 return 0;
}
