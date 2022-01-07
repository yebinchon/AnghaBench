
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct etnaviv_iommuv2_context {int id; int mtlb_dma; scalar_t__ mtlb_cpu; int * stlb_dma; scalar_t__* stlb_cpu; } ;
struct etnaviv_iommu_context {TYPE_2__* global; int mm; } ;
struct TYPE_3__ {int pta_alloc; } ;
struct TYPE_4__ {TYPE_1__ v2; int dev; } ;


 int MMUv2_MAX_STLB_ENTRIES ;
 int SZ_4K ;
 int clear_bit (int ,int ) ;
 int dma_free_wc (int ,int ,scalar_t__,int ) ;
 int drm_mm_takedown (int *) ;
 struct etnaviv_iommuv2_context* to_v2_context (struct etnaviv_iommu_context*) ;
 int vfree (struct etnaviv_iommuv2_context*) ;

__attribute__((used)) static void etnaviv_iommuv2_free(struct etnaviv_iommu_context *context)
{
 struct etnaviv_iommuv2_context *v2_context = to_v2_context(context);
 int i;

 drm_mm_takedown(&context->mm);

 for (i = 0; i < MMUv2_MAX_STLB_ENTRIES; i++) {
  if (v2_context->stlb_cpu[i])
   dma_free_wc(context->global->dev, SZ_4K,
        v2_context->stlb_cpu[i],
        v2_context->stlb_dma[i]);
 }

 dma_free_wc(context->global->dev, SZ_4K, v2_context->mtlb_cpu,
      v2_context->mtlb_dma);

 clear_bit(v2_context->id, context->global->v2.pta_alloc);

 vfree(v2_context);
}
