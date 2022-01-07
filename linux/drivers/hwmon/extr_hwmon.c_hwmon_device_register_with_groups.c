
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct attribute_group {int dummy; } ;


 int EINVAL ;
 struct device* ERR_PTR (int ) ;
 struct device* __hwmon_device_register (struct device*,char const*,void*,int *,struct attribute_group const**) ;

struct device *
hwmon_device_register_with_groups(struct device *dev, const char *name,
      void *drvdata,
      const struct attribute_group **groups)
{
 if (!name)
  return ERR_PTR(-EINVAL);

 return __hwmon_device_register(dev, name, drvdata, ((void*)0), groups);
}
