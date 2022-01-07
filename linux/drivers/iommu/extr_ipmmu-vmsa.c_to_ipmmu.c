
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {int dummy; } ;
struct iommu_fwspec {struct ipmmu_vmsa_device* iommu_priv; } ;
struct device {int dummy; } ;


 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;

__attribute__((used)) static struct ipmmu_vmsa_device *to_ipmmu(struct device *dev)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);

 return fwspec ? fwspec->iommu_priv : ((void*)0);
}
