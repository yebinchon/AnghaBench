
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_fwspec {int iommu_fwnode; } ;
struct device {int dummy; } ;


 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int dev_iommu_fwspec_set (struct device*,int *) ;
 int fwnode_handle_put (int ) ;
 int kfree (struct iommu_fwspec*) ;

void iommu_fwspec_free(struct device *dev)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);

 if (fwspec) {
  fwnode_handle_put(fwspec->iommu_fwnode);
  kfree(fwspec);
  dev_iommu_fwspec_set(dev, ((void*)0));
 }
}
