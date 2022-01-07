
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_gpadc_iio {int no_irq; int tzd; int sensor_device; } ;
struct platform_device {int dev; } ;
struct iio_dev {int dummy; } ;


 int CONFIG_THERMAL_OF ;
 int IS_ENABLED (int ) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct sun4i_gpadc_iio* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put (int *) ;
 int thermal_zone_of_sensor_unregister (int ,int ) ;

__attribute__((used)) static int sun4i_gpadc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct sun4i_gpadc_iio *info = iio_priv(indio_dev);

 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 if (!IS_ENABLED(CONFIG_THERMAL_OF))
  return 0;

 thermal_zone_of_sensor_unregister(info->sensor_device, info->tzd);

 if (!info->no_irq)
  iio_map_array_unregister(indio_dev);

 return 0;
}
