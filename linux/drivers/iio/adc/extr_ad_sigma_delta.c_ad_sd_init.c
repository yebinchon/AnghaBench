
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad_sigma_delta_info {int dummy; } ;
struct ad_sigma_delta {struct ad_sigma_delta_info const* info; struct spi_device* spi; } ;


 int iio_device_set_drvdata (struct iio_dev*,struct ad_sigma_delta*) ;

int ad_sd_init(struct ad_sigma_delta *sigma_delta, struct iio_dev *indio_dev,
 struct spi_device *spi, const struct ad_sigma_delta_info *info)
{
 sigma_delta->spi = spi;
 sigma_delta->info = info;
 iio_device_set_drvdata(indio_dev, sigma_delta);

 return 0;
}
