
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct TYPE_5__ {struct sg_table* pages; } ;
struct TYPE_7__ {int size; TYPE_4__* dev; } ;
struct drm_i915_gem_object {TYPE_1__ mm; TYPE_3__ base; } ;
struct TYPE_8__ {TYPE_2__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int DMA_ATTR_NO_WARN ;
 int ENOSPC ;
 int GEM_BUG_ON (int) ;
 int I915_SHRINK_BOUND ;
 int I915_SHRINK_UNBOUND ;
 int PAGE_SHIFT ;
 int PCI_DMA_BIDIRECTIONAL ;
 scalar_t__ dma_map_sg_attrs (int *,int ,int ,int ,int ) ;
 scalar_t__ i915_gem_shrink (int ,int,int *,int) ;
 int to_i915 (TYPE_4__*) ;

int i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
          struct sg_table *pages)
{
 do {
  if (dma_map_sg_attrs(&obj->base.dev->pdev->dev,
         pages->sgl, pages->nents,
         PCI_DMA_BIDIRECTIONAL,
         DMA_ATTR_NO_WARN))
   return 0;
  GEM_BUG_ON(obj->mm.pages == pages);
 } while (i915_gem_shrink(to_i915(obj->base.dev),
     obj->base.size >> PAGE_SHIFT, ((void*)0),
     I915_SHRINK_BOUND |
     I915_SHRINK_UNBOUND));

 return -ENOSPC;
}
