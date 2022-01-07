
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;
typedef int dma_addr_t ;


 int i915_gem_object_get_dma_address_len (struct drm_i915_gem_object*,unsigned long,int *) ;

dma_addr_t
i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj,
    unsigned long n)
{
 return i915_gem_object_get_dma_address_len(obj, n, ((void*)0));
}
