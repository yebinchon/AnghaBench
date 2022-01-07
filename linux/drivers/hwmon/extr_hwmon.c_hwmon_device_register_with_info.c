
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwmon_chip_info {int info; TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;
struct TYPE_2__ {int is_visible; } ;


 int EINVAL ;
 struct device* ERR_PTR (int ) ;
 struct device* __hwmon_device_register (struct device*,char const*,void*,struct hwmon_chip_info const*,struct attribute_group const**) ;

struct device *
hwmon_device_register_with_info(struct device *dev, const char *name,
    void *drvdata,
    const struct hwmon_chip_info *chip,
    const struct attribute_group **extra_groups)
{
 if (!name)
  return ERR_PTR(-EINVAL);

 if (chip && (!chip->ops || !chip->ops->is_visible || !chip->info))
  return ERR_PTR(-EINVAL);

 if (chip && !dev)
  return ERR_PTR(-EINVAL);

 return __hwmon_device_register(dev, name, drvdata, chip, extra_groups);
}
