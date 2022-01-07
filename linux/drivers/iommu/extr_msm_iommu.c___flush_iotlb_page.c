
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;


 int __flush_iotlb_range (unsigned long,size_t,size_t,int,void*) ;

__attribute__((used)) static void __flush_iotlb_page(struct iommu_iotlb_gather *gather,
          unsigned long iova, size_t granule, void *cookie)
{
 __flush_iotlb_range(iova, granule, granule, 1, cookie);
}
