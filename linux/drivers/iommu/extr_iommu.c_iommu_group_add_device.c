
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int id; int devices_kobj; int mutex; int notifier; scalar_t__ domain; int devices; int kobj; } ;
struct group_device {struct group_device* name; int list; struct device* dev; } ;
struct device {int kobj; struct iommu_group* iommu_group; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOMMU_GROUP_NOTIFY_ADD_DEVICE ;
 int __iommu_attach_device (scalar_t__,struct device*) ;
 int blocking_notifier_call_chain (int *,int ,struct device*) ;
 int dev_err (struct device*,char*,int ,int) ;
 int dev_info (struct device*,char*,int ) ;
 int iommu_group_create_direct_mappings (struct iommu_group*,struct device*) ;
 void* kasprintf (int ,char*,int ,...) ;
 int kfree (struct group_device*) ;
 int kobject_get (int ) ;
 int kobject_name (int *) ;
 int kobject_put (int ) ;
 struct group_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_create_link_nowarn (int ,int *,struct group_device*) ;
 int sysfs_remove_link (int *,char*) ;
 int trace_add_device_to_group (int ,struct device*) ;

int iommu_group_add_device(struct iommu_group *group, struct device *dev)
{
 int ret, i = 0;
 struct group_device *device;

 device = kzalloc(sizeof(*device), GFP_KERNEL);
 if (!device)
  return -ENOMEM;

 device->dev = dev;

 ret = sysfs_create_link(&dev->kobj, &group->kobj, "iommu_group");
 if (ret)
  goto err_free_device;

 device->name = kasprintf(GFP_KERNEL, "%s", kobject_name(&dev->kobj));
rename:
 if (!device->name) {
  ret = -ENOMEM;
  goto err_remove_link;
 }

 ret = sysfs_create_link_nowarn(group->devices_kobj,
           &dev->kobj, device->name);
 if (ret) {
  if (ret == -EEXIST && i >= 0) {




   kfree(device->name);
   device->name = kasprintf(GFP_KERNEL, "%s.%d",
       kobject_name(&dev->kobj), i++);
   goto rename;
  }
  goto err_free_name;
 }

 kobject_get(group->devices_kobj);

 dev->iommu_group = group;

 iommu_group_create_direct_mappings(group, dev);

 mutex_lock(&group->mutex);
 list_add_tail(&device->list, &group->devices);
 if (group->domain)
  ret = __iommu_attach_device(group->domain, dev);
 mutex_unlock(&group->mutex);
 if (ret)
  goto err_put_group;


 blocking_notifier_call_chain(&group->notifier,
         IOMMU_GROUP_NOTIFY_ADD_DEVICE, dev);

 trace_add_device_to_group(group->id, dev);

 dev_info(dev, "Adding to iommu group %d\n", group->id);

 return 0;

err_put_group:
 mutex_lock(&group->mutex);
 list_del(&device->list);
 mutex_unlock(&group->mutex);
 dev->iommu_group = ((void*)0);
 kobject_put(group->devices_kobj);
err_free_name:
 kfree(device->name);
err_remove_link:
 sysfs_remove_link(&dev->kobj, "iommu_group");
err_free_device:
 kfree(device);
 dev_err(dev, "Failed to add to iommu group %d: %d\n", group->id, ret);
 return ret;
}
