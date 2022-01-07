
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommuv2_context {int* mtlb_cpu; } ;
struct etnaviv_iommu_context {int dummy; } ;


 int MMUv2_MAX_STLB_ENTRIES ;
 int MMUv2_PTE_PRESENT ;
 size_t SZ_4K ;
 struct etnaviv_iommuv2_context* to_v2_context (struct etnaviv_iommu_context*) ;

__attribute__((used)) static size_t etnaviv_iommuv2_dump_size(struct etnaviv_iommu_context *context)
{
 struct etnaviv_iommuv2_context *v2_context = to_v2_context(context);
 size_t dump_size = SZ_4K;
 int i;

 for (i = 0; i < MMUv2_MAX_STLB_ENTRIES; i++)
  if (v2_context->mtlb_cpu[i] & MMUv2_PTE_PRESENT)
   dump_size += SZ_4K;

 return dump_size;
}
