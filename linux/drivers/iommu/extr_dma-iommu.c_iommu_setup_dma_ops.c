
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_domain {scalar_t__ type; } ;
struct device {int * dma_ops; } ;


 scalar_t__ IOMMU_DOMAIN_DMA ;
 int dev_name (struct device*) ;
 scalar_t__ iommu_dma_init_domain (struct iommu_domain*,int ,int ,struct device*) ;
 int iommu_dma_ops ;
 struct iommu_domain* iommu_get_domain_for_dev (struct device*) ;
 int pr_warn (char*,int ) ;

void iommu_setup_dma_ops(struct device *dev, u64 dma_base, u64 size)
{
 struct iommu_domain *domain = iommu_get_domain_for_dev(dev);

 if (!domain)
  goto out_err;





 if (domain->type == IOMMU_DOMAIN_DMA) {
  if (iommu_dma_init_domain(domain, dma_base, size, dev))
   goto out_err;
  dev->dma_ops = &iommu_dma_ops;
 }

 return;
out_err:
  pr_warn("Failed to set up IOMMU for device %s; retaining platform DMA ops\n",
   dev_name(dev));
}
