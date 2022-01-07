
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sun4i_gpadc_iio {int no_irq; int tzd; int sensor_device; int completion; struct iio_dev* indio_dev; int mutex; } ;
struct TYPE_13__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_12__ {scalar_t__ of_node; TYPE_2__* parent; } ;
struct iio_dev {int modes; int * info; TYPE_1__ dev; int name; } ;


 int CONFIG_THERMAL_OF ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SUN4I_GPADC_AUTOSUSPEND_DELAY ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_iio_device_register (TYPE_2__*,struct iio_dev*) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct sun4i_gpadc_iio* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_put (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_set_suspended (TYPE_2__*) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 int sun4i_gpadc_iio_info ;
 int sun4i_gpadc_probe_dt (struct platform_device*,struct iio_dev*) ;
 int sun4i_gpadc_probe_mfd (struct platform_device*,struct iio_dev*) ;
 int sun4i_ts_tz_ops ;
 int thermal_zone_of_sensor_register (int ,int ,struct sun4i_gpadc_iio*,int *) ;

__attribute__((used)) static int sun4i_gpadc_probe(struct platform_device *pdev)
{
 struct sun4i_gpadc_iio *info;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*info));
 if (!indio_dev)
  return -ENOMEM;

 info = iio_priv(indio_dev);
 platform_set_drvdata(pdev, indio_dev);

 mutex_init(&info->mutex);
 info->indio_dev = indio_dev;
 init_completion(&info->completion);
 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->info = &sun4i_gpadc_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 if (pdev->dev.of_node)
  ret = sun4i_gpadc_probe_dt(pdev, indio_dev);
 else
  ret = sun4i_gpadc_probe_mfd(pdev, indio_dev);

 if (ret)
  return ret;

 pm_runtime_set_autosuspend_delay(&pdev->dev,
      SUN4I_GPADC_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 if (IS_ENABLED(CONFIG_THERMAL_OF)) {
  info->tzd = thermal_zone_of_sensor_register(info->sensor_device,
           0, info,
           &sun4i_ts_tz_ops);




  if (IS_ERR(info->tzd) && PTR_ERR(info->tzd) != -ENODEV) {
   dev_err(&pdev->dev,
    "could not register thermal sensor: %ld\n",
    PTR_ERR(info->tzd));
   return PTR_ERR(info->tzd);
  }
 }

 ret = devm_iio_device_register(&pdev->dev, indio_dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "could not register the device\n");
  goto err_map;
 }

 return 0;

err_map:
 if (!info->no_irq && IS_ENABLED(CONFIG_THERMAL_OF))
  iio_map_array_unregister(indio_dev);

 pm_runtime_put(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return ret;
}
