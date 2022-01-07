
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct platform_data {int attr_groups; scalar_t__ nr_sensor_groups; scalar_t__ sensors_count; } ;
struct device {int dummy; } ;


 int DRVNAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int create_device_attrs (struct platform_device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct platform_data*,int ) ;
 struct platform_data* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct platform_data*) ;
 int populate_attr_groups (struct platform_device*) ;

__attribute__((used)) static int ibmpowernv_probe(struct platform_device *pdev)
{
 struct platform_data *pdata;
 struct device *hwmon_dev;
 int err;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 platform_set_drvdata(pdev, pdata);
 pdata->sensors_count = 0;
 pdata->nr_sensor_groups = 0;
 err = populate_attr_groups(pdev);
 if (err)
  return err;


 err = create_device_attrs(pdev);
 if (err)
  return err;


 hwmon_dev = devm_hwmon_device_register_with_groups(&pdev->dev, DRVNAME,
          pdata,
          pdata->attr_groups);

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
