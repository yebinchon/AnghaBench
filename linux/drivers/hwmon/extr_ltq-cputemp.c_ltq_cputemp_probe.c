
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 scalar_t__ SOC_TYPE_VR9_2 ;
 int dev_err (int *,char*) ;
 int devm_add_action (int *,int ,int *) ;
 struct device* devm_hwmon_device_register_with_info (int *,char*,int *,int *,int *) ;
 int ltq_chip_info ;
 int ltq_cputemp_disable ;
 int ltq_cputemp_enable () ;
 scalar_t__ ltq_soc_type () ;

__attribute__((used)) static int ltq_cputemp_probe(struct platform_device *pdev)
{
 struct device *hwmon_dev;
 int err = 0;


 if (ltq_soc_type() != SOC_TYPE_VR9_2)
  return -ENODEV;

 err = devm_add_action(&pdev->dev, ltq_cputemp_disable, ((void*)0));
 if (err)
  return err;

 ltq_cputemp_enable();

 hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
        "ltq_cputemp",
        ((void*)0),
        &ltq_chip_info,
        ((void*)0));

 if (IS_ERR(hwmon_dev)) {
  dev_err(&pdev->dev, "Failed to register as hwmon device");
  return PTR_ERR(hwmon_dev);
 }

 return 0;
}
