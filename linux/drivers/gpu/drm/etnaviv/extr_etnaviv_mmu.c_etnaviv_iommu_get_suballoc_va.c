
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_mm_node {scalar_t__ start; } ;
struct etnaviv_vram_mapping {int use; int mmu_node; scalar_t__ iova; struct drm_mm_node vram_node; } ;
struct etnaviv_iommu_context {int lock; int mappings; int flush_seq; TYPE_1__* global; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ version; } ;


 scalar_t__ ETNAVIV_IOMMU_V1 ;
 int ETNAVIV_PROT_READ ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 int etnaviv_context_map (struct etnaviv_iommu_context*,scalar_t__,scalar_t__,size_t,int ) ;
 int etnaviv_iommu_find_iova (struct etnaviv_iommu_context*,struct drm_mm_node*,size_t) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int etnaviv_iommu_get_suballoc_va(struct etnaviv_iommu_context *context,
      struct etnaviv_vram_mapping *mapping,
      u32 memory_base, dma_addr_t paddr,
      size_t size)
{
 mutex_lock(&context->lock);

 if (mapping->use > 0) {
  mapping->use++;
  mutex_unlock(&context->lock);
  return 0;
 }







 if (context->global->version == ETNAVIV_IOMMU_V1) {
  mapping->iova = paddr - memory_base;
 } else {
  struct drm_mm_node *node = &mapping->vram_node;
  int ret;

  ret = etnaviv_iommu_find_iova(context, node, size);
  if (ret < 0) {
   mutex_unlock(&context->lock);
   return ret;
  }

  mapping->iova = node->start;
  ret = etnaviv_context_map(context, node->start, paddr, size,
       ETNAVIV_PROT_READ);
  if (ret < 0) {
   drm_mm_remove_node(node);
   mutex_unlock(&context->lock);
   return ret;
  }

  context->flush_seq++;
 }

 list_add_tail(&mapping->mmu_node, &context->mappings);
 mapping->use = 1;

 mutex_unlock(&context->lock);

 return 0;
}
