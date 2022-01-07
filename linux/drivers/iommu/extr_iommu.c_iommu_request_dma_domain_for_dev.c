
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IOMMU_DOMAIN_DMA ;
 int request_default_domain_for_dev (struct device*,int ) ;

int iommu_request_dma_domain_for_dev(struct device *dev)
{
 return request_default_domain_for_dev(dev, IOMMU_DOMAIN_DMA);
}
