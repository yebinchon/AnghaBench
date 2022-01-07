
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct etnaviv_iommuv1_context {int pgtable_dma; int pgtable_cpu; } ;
struct etnaviv_iommu_context {TYPE_2__* global; int mm; } ;
struct TYPE_3__ {int * shared_context; } ;
struct TYPE_4__ {TYPE_1__ v1; int dev; } ;


 int PT_SIZE ;
 int dma_free_wc (int ,int ,int ,int ) ;
 int drm_mm_takedown (int *) ;
 int kfree (struct etnaviv_iommuv1_context*) ;
 struct etnaviv_iommuv1_context* to_v1_context (struct etnaviv_iommu_context*) ;

__attribute__((used)) static void etnaviv_iommuv1_free(struct etnaviv_iommu_context *context)
{
 struct etnaviv_iommuv1_context *v1_context = to_v1_context(context);

 drm_mm_takedown(&context->mm);

 dma_free_wc(context->global->dev, PT_SIZE, v1_context->pgtable_cpu,
      v1_context->pgtable_dma);

 context->global->v1.shared_context = ((void*)0);

 kfree(v1_context);
}
