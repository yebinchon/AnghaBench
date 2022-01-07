
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {int id; struct device dev; } ;
struct platform_data {int hwmon_dev; int pkg_id; } ;


 int DRVNAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (int ) ;
 int devm_hwmon_device_register_with_groups (struct device*,int ,struct platform_data*,int *) ;
 struct platform_data* devm_kzalloc (struct device*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct platform_data*) ;

__attribute__((used)) static int coretemp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct platform_data *pdata;


 pdata = devm_kzalloc(dev, sizeof(struct platform_data), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 pdata->pkg_id = pdev->id;
 platform_set_drvdata(pdev, pdata);

 pdata->hwmon_dev = devm_hwmon_device_register_with_groups(dev, DRVNAME,
          pdata, ((void*)0));
 return PTR_ERR_OR_ZERO(pdata->hwmon_dev);
}
