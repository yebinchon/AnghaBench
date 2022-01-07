
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;


 int ipmmu_flush_iotlb_all (struct iommu_domain*) ;

__attribute__((used)) static void ipmmu_iotlb_sync(struct iommu_domain *io_domain,
        struct iommu_iotlb_gather *gather)
{
 ipmmu_flush_iotlb_all(io_domain);
}
