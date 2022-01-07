
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwmon_chip_info {int dummy; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int devm_hwmon_release ;
 int devres_add (struct device*,struct device**) ;
 struct device** devres_alloc (int ,int,int ) ;
 int devres_free (struct device**) ;
 struct device* hwmon_device_register_with_info (struct device*,char const*,void*,struct hwmon_chip_info const*,struct attribute_group const**) ;

struct device *
devm_hwmon_device_register_with_info(struct device *dev, const char *name,
         void *drvdata,
         const struct hwmon_chip_info *chip,
         const struct attribute_group **groups)
{
 struct device **ptr, *hwdev;

 if (!dev)
  return ERR_PTR(-EINVAL);

 ptr = devres_alloc(devm_hwmon_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 hwdev = hwmon_device_register_with_info(dev, name, drvdata, chip,
      groups);
 if (IS_ERR(hwdev))
  goto error;

 *ptr = hwdev;
 devres_add(dev, ptr);

 return hwdev;

error:
 devres_free(ptr);
 return hwdev;
}
