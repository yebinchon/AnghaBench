
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etnaviv_iommuv1_context {int * pgtable_cpu; } ;
struct etnaviv_iommu_context {TYPE_1__* global; } ;
struct TYPE_2__ {int bad_page_dma; } ;


 size_t EINVAL ;
 unsigned long GPU_MEM_START ;
 unsigned long SZ_4K ;
 struct etnaviv_iommuv1_context* to_v1_context (struct etnaviv_iommu_context*) ;

__attribute__((used)) static size_t etnaviv_iommuv1_unmap(struct etnaviv_iommu_context *context,
 unsigned long iova, size_t size)
{
 struct etnaviv_iommuv1_context *v1_context = to_v1_context(context);
 unsigned int index = (iova - GPU_MEM_START) / SZ_4K;

 if (size != SZ_4K)
  return -EINVAL;

 v1_context->pgtable_cpu[index] = context->global->bad_page_dma;

 return SZ_4K;
}
