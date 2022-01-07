
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int ENOSYS ;
 int dev_name (struct device*) ;
 int usnic_err (char*,int ,struct iommu_domain*,unsigned long,int) ;

__attribute__((used)) static int usnic_uiom_dma_fault(struct iommu_domain *domain,
    struct device *dev,
    unsigned long iova, int flags,
    void *token)
{
 usnic_err("Device %s iommu fault domain 0x%pK va 0x%lx flags 0x%x\n",
  dev_name(dev),
  domain, iova, flags);
 return -ENOSYS;
}
