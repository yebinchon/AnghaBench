
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad_sigma_delta {struct iio_trigger* trig; } ;


 int EINVAL ;
 struct ad_sigma_delta* iio_device_get_drvdata (struct iio_dev*) ;

int ad_sd_validate_trigger(struct iio_dev *indio_dev, struct iio_trigger *trig)
{
 struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);

 if (sigma_delta->trig != trig)
  return -EINVAL;

 return 0;
}
