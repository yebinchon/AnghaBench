
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_device {TYPE_1__* dev; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int kobj; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct iommu_device*) ;
 int dev_name (struct device*) ;
 int sysfs_add_link_to_group (int *,char*,int *,int ) ;
 int sysfs_create_link_nowarn (int *,int *,char*) ;
 int sysfs_remove_link_from_group (int *,char*,int ) ;

int iommu_device_link(struct iommu_device *iommu, struct device *link)
{
 int ret;

 if (!iommu || IS_ERR(iommu))
  return -ENODEV;

 ret = sysfs_add_link_to_group(&iommu->dev->kobj, "devices",
          &link->kobj, dev_name(link));
 if (ret)
  return ret;

 ret = sysfs_create_link_nowarn(&link->kobj, &iommu->dev->kobj, "iommu");
 if (ret)
  sysfs_remove_link_from_group(&iommu->dev->kobj, "devices",
          dev_name(link));

 return ret;
}
