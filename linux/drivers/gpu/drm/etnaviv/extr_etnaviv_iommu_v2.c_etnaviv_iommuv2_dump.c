
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommuv2_context {int* mtlb_cpu; int** stlb_cpu; } ;
struct etnaviv_iommu_context {int dummy; } ;


 int MMUv2_MAX_STLB_ENTRIES ;
 int MMUv2_PTE_PRESENT ;
 int SZ_4K ;
 int memcpy (void*,int*,int ) ;
 struct etnaviv_iommuv2_context* to_v2_context (struct etnaviv_iommu_context*) ;

__attribute__((used)) static void etnaviv_iommuv2_dump(struct etnaviv_iommu_context *context, void *buf)
{
 struct etnaviv_iommuv2_context *v2_context = to_v2_context(context);
 int i;

 memcpy(buf, v2_context->mtlb_cpu, SZ_4K);
 buf += SZ_4K;
 for (i = 0; i < MMUv2_MAX_STLB_ENTRIES; i++)
  if (v2_context->mtlb_cpu[i] & MMUv2_PTE_PRESENT) {
   memcpy(buf, v2_context->stlb_cpu[i], SZ_4K);
   buf += SZ_4K;
  }
}
