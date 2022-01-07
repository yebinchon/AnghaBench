
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_hwmon_data {int hwmon_dev; int get_values_poll_work; int fw; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int dev_get_drvdata (int ) ;
 int devm_hwmon_device_register_with_info (struct device*,char*,struct rpi_hwmon_data*,int *,int *) ;
 struct rpi_hwmon_data* devm_kzalloc (struct device*,int,int ) ;
 int get_values_poll ;
 int platform_set_drvdata (struct platform_device*,struct rpi_hwmon_data*) ;
 int rpi_chip_info ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int rpi_hwmon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rpi_hwmon_data *data;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;


 data->fw = dev_get_drvdata(dev->parent);

 data->hwmon_dev = devm_hwmon_device_register_with_info(dev, "rpi_volt",
              data,
              &rpi_chip_info,
              ((void*)0));

 INIT_DELAYED_WORK(&data->get_values_poll_work, get_values_poll);
 platform_set_drvdata(pdev, data);

 if (!PTR_ERR_OR_ZERO(data->hwmon_dev))
  schedule_delayed_work(&data->get_values_poll_work, 2 * HZ);

 return PTR_ERR_OR_ZERO(data->hwmon_dev);
}
