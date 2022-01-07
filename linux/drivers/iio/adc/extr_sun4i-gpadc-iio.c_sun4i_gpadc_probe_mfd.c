
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sun4i_gpadc_iio {int no_irq; int ignore_fifo_data_irq; int fifo_data_irq; int ignore_temp_data_irq; int temp_data_irq; int sensor_device; struct gpadc_data* data; int regmap; } ;
struct sun4i_gpadc_dev {int regmap; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct iio_dev {void* channels; void* num_channels; } ;
struct gpadc_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;


 void* ARRAY_SIZE (void*) ;
 int CONFIG_THERMAL_OF ;
 scalar_t__ IS_ENABLED (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 struct sun4i_gpadc_dev* dev_get_drvdata (int ) ;
 int iio_map_array_register (struct iio_dev*,int ) ;
 struct sun4i_gpadc_iio* iio_priv (struct iio_dev*) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 void* sun4i_gpadc_channels ;
 void* sun4i_gpadc_channels_no_temp ;
 int sun4i_gpadc_fifo_data_irq_handler ;
 int sun4i_gpadc_hwmon_maps ;
 int sun4i_gpadc_temp_data_irq_handler ;
 int sun4i_irq_init (struct platform_device*,char*,int ,char*,int *,int *) ;

__attribute__((used)) static int sun4i_gpadc_probe_mfd(struct platform_device *pdev,
     struct iio_dev *indio_dev)
{
 struct sun4i_gpadc_iio *info = iio_priv(indio_dev);
 struct sun4i_gpadc_dev *sun4i_gpadc_dev =
  dev_get_drvdata(pdev->dev.parent);
 int ret;

 info->no_irq = 0;
 info->regmap = sun4i_gpadc_dev->regmap;

 indio_dev->num_channels = ARRAY_SIZE(sun4i_gpadc_channels);
 indio_dev->channels = sun4i_gpadc_channels;

 info->data = (struct gpadc_data *)platform_get_device_id(pdev)->driver_data;
 if (IS_ENABLED(CONFIG_THERMAL_OF)) {
  info->sensor_device = pdev->dev.parent;
 } else {
  indio_dev->num_channels =
   ARRAY_SIZE(sun4i_gpadc_channels_no_temp);
  indio_dev->channels = sun4i_gpadc_channels_no_temp;
 }

 if (IS_ENABLED(CONFIG_THERMAL_OF)) {
  ret = sun4i_irq_init(pdev, "TEMP_DATA_PENDING",
         sun4i_gpadc_temp_data_irq_handler,
         "temp_data", &info->temp_data_irq,
         &info->ignore_temp_data_irq);
  if (ret < 0)
   return ret;
 }

 ret = sun4i_irq_init(pdev, "FIFO_DATA_PENDING",
        sun4i_gpadc_fifo_data_irq_handler, "fifo_data",
        &info->fifo_data_irq, &info->ignore_fifo_data_irq);
 if (ret < 0)
  return ret;

 if (IS_ENABLED(CONFIG_THERMAL_OF)) {
  ret = iio_map_array_register(indio_dev, sun4i_gpadc_hwmon_maps);
  if (ret < 0) {
   dev_err(&pdev->dev,
    "failed to register iio map array\n");
   return ret;
  }
 }

 return 0;
}
