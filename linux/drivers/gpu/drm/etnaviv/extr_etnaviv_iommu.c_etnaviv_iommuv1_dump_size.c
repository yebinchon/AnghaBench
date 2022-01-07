
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommu_context {int dummy; } ;


 size_t PT_SIZE ;

__attribute__((used)) static size_t etnaviv_iommuv1_dump_size(struct etnaviv_iommu_context *context)
{
 return PT_SIZE;
}
