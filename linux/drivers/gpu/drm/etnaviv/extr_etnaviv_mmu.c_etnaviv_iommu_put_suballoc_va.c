
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_node {int size; int start; } ;
struct etnaviv_vram_mapping {scalar_t__ use; struct drm_mm_node vram_node; } ;
struct etnaviv_iommu_context {int lock; TYPE_1__* global; } ;
struct TYPE_2__ {scalar_t__ version; } ;


 scalar_t__ ETNAVIV_IOMMU_V1 ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 int etnaviv_context_unmap (struct etnaviv_iommu_context*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void etnaviv_iommu_put_suballoc_va(struct etnaviv_iommu_context *context,
    struct etnaviv_vram_mapping *mapping)
{
 struct drm_mm_node *node = &mapping->vram_node;

 mutex_lock(&context->lock);
 mapping->use--;

 if (mapping->use > 0 || context->global->version == ETNAVIV_IOMMU_V1) {
  mutex_unlock(&context->lock);
  return;
 }

 etnaviv_context_unmap(context, node->start, node->size);
 drm_mm_remove_node(node);
 mutex_unlock(&context->lock);
}
