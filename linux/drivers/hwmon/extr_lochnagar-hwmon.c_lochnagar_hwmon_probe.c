
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct lochnagar_hwmon {int* power_nsamples; int regmap; int sensor_lock; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_err (struct device*,char*) ;
 int dev_get_regmap (int ,int *) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,char*,struct lochnagar_hwmon*,int *,int *) ;
 struct lochnagar_hwmon* devm_kzalloc (struct device*,int,int ) ;
 int lochnagar_chip_info ;
 int mutex_init (int *) ;

__attribute__((used)) static int lochnagar_hwmon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device *hwmon_dev;
 struct lochnagar_hwmon *priv;
 int i;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->sensor_lock);

 priv->regmap = dev_get_regmap(dev->parent, ((void*)0));
 if (!priv->regmap) {
  dev_err(dev, "No register map found\n");
  return -EINVAL;
 }

 for (i = 0; i < ARRAY_SIZE(priv->power_nsamples); i++)
  priv->power_nsamples[i] = 96;

 hwmon_dev = devm_hwmon_device_register_with_info(dev, "Lochnagar", priv,
        &lochnagar_chip_info,
        ((void*)0));

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
