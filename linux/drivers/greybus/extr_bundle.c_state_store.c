
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct gb_bundle {TYPE_1__ dev; int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kstrdup (char const*,int ) ;
 int sysfs_notify (int *,int *,char*) ;
 struct gb_bundle* to_gb_bundle (struct device*) ;

__attribute__((used)) static ssize_t state_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t size)
{
 struct gb_bundle *bundle = to_gb_bundle(dev);

 kfree(bundle->state);
 bundle->state = kstrdup(buf, GFP_KERNEL);
 if (!bundle->state)
  return -ENOMEM;


 sysfs_notify(&bundle->dev.kobj, ((void*)0), "state");

 return size;
}
