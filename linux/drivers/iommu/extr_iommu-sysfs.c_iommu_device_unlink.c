
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_device {TYPE_1__* dev; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int kobj; } ;


 scalar_t__ IS_ERR (struct iommu_device*) ;
 int dev_name (struct device*) ;
 int sysfs_remove_link (int *,char*) ;
 int sysfs_remove_link_from_group (int *,char*,int ) ;

void iommu_device_unlink(struct iommu_device *iommu, struct device *link)
{
 if (!iommu || IS_ERR(iommu))
  return;

 sysfs_remove_link(&link->kobj, "iommu");
 sysfs_remove_link_from_group(&iommu->dev->kobj, "devices", dev_name(link));
}
