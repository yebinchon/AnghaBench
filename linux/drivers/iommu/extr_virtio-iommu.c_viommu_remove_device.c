
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viommu_endpoint {int resv_regions; TYPE_1__* viommu; } ;
struct iommu_fwspec {struct viommu_endpoint* iommu_priv; int * ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int iommu; } ;


 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 int kfree (struct viommu_endpoint*) ;
 int viommu_ops ;
 int viommu_put_resv_regions (struct device*,int *) ;

__attribute__((used)) static void viommu_remove_device(struct device *dev)
{
 struct viommu_endpoint *vdev;
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);

 if (!fwspec || fwspec->ops != &viommu_ops)
  return;

 vdev = fwspec->iommu_priv;

 iommu_group_remove_device(dev);
 iommu_device_unlink(&vdev->viommu->iommu, dev);
 viommu_put_resv_regions(dev, &vdev->resv_regions);
 kfree(vdev);
}
