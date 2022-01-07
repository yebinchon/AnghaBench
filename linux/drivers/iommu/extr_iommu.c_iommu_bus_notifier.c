
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct iommu_group {int notifier; } ;
struct device {int dummy; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;


 unsigned long BUS_NOTIFY_REMOVED_DEVICE ;


 unsigned long IOMMU_GROUP_NOTIFY_BIND_DRIVER ;
 unsigned long IOMMU_GROUP_NOTIFY_BOUND_DRIVER ;
 unsigned long IOMMU_GROUP_NOTIFY_UNBIND_DRIVER ;
 unsigned long IOMMU_GROUP_NOTIFY_UNBOUND_DRIVER ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int blocking_notifier_call_chain (int *,unsigned long,struct device*) ;
 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int iommu_probe_device (struct device*) ;
 int iommu_release_device (struct device*) ;

__attribute__((used)) static int iommu_bus_notifier(struct notifier_block *nb,
         unsigned long action, void *data)
{
 unsigned long group_action = 0;
 struct device *dev = data;
 struct iommu_group *group;





 if (action == BUS_NOTIFY_ADD_DEVICE) {
  int ret;

  ret = iommu_probe_device(dev);
  return (ret) ? NOTIFY_DONE : NOTIFY_OK;
 } else if (action == BUS_NOTIFY_REMOVED_DEVICE) {
  iommu_release_device(dev);
  return NOTIFY_OK;
 }





 group = iommu_group_get(dev);
 if (!group)
  return 0;

 switch (action) {
 case 131:
  group_action = IOMMU_GROUP_NOTIFY_BIND_DRIVER;
  break;
 case 130:
  group_action = IOMMU_GROUP_NOTIFY_BOUND_DRIVER;
  break;
 case 129:
  group_action = IOMMU_GROUP_NOTIFY_UNBIND_DRIVER;
  break;
 case 128:
  group_action = IOMMU_GROUP_NOTIFY_UNBOUND_DRIVER;
  break;
 }

 if (group_action)
  blocking_notifier_call_chain(&group->notifier,
          group_action, dev);

 iommu_group_put(group);
 return 0;
}
