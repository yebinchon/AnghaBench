
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 unsigned int PAGE_SHIFT ;
 struct scatterlist* i915_gem_object_get_sg (struct drm_i915_gem_object*,unsigned long,unsigned int*) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;

dma_addr_t
i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
        unsigned long n,
        unsigned int *len)
{
 struct scatterlist *sg;
 unsigned int offset;

 sg = i915_gem_object_get_sg(obj, n, &offset);

 if (len)
  *len = sg_dma_len(sg) - (offset << PAGE_SHIFT);

 return sg_dma_address(sg) + (offset << PAGE_SHIFT);
}
