
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int drm; } ;
struct TYPE_2__ {int size; } ;
struct drm_i915_gem_object {scalar_t__ scratch; void* write_domain; void* read_domains; TYPE_1__ base; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 int E2BIG ;
 int ENOMEM ;
 struct drm_i915_gem_object* ERR_PTR (int ) ;
 int GEM_BUG_ON (int) ;
 scalar_t__ HAS_LLC (struct drm_i915_private*) ;
 unsigned int I915_CACHE_LLC ;
 unsigned int I915_CACHE_NONE ;
 void* I915_GEM_DOMAIN_CPU ;
 int I915_GTT_PAGE_SIZE ;
 int IS_ALIGNED (scalar_t__,int ) ;
 int PAGE_SIZE ;
 int drm_gem_private_object_init (int *,TYPE_1__*,scalar_t__) ;
 int huge_ops ;
 struct drm_i915_gem_object* i915_gem_object_alloc () ;
 int i915_gem_object_init (struct drm_i915_gem_object*,int *) ;
 int i915_gem_object_set_cache_coherency (struct drm_i915_gem_object*,unsigned int) ;
 scalar_t__ overflows_type (scalar_t__,int ) ;

struct drm_i915_gem_object *
huge_gem_object(struct drm_i915_private *i915,
  phys_addr_t phys_size,
  dma_addr_t dma_size)
{
 struct drm_i915_gem_object *obj;
 unsigned int cache_level;

 GEM_BUG_ON(!phys_size || phys_size > dma_size);
 GEM_BUG_ON(!IS_ALIGNED(phys_size, PAGE_SIZE));
 GEM_BUG_ON(!IS_ALIGNED(dma_size, I915_GTT_PAGE_SIZE));

 if (overflows_type(dma_size, obj->base.size))
  return ERR_PTR(-E2BIG);

 obj = i915_gem_object_alloc();
 if (!obj)
  return ERR_PTR(-ENOMEM);

 drm_gem_private_object_init(&i915->drm, &obj->base, dma_size);
 i915_gem_object_init(obj, &huge_ops);

 obj->read_domains = I915_GEM_DOMAIN_CPU;
 obj->write_domain = I915_GEM_DOMAIN_CPU;
 cache_level = HAS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
 i915_gem_object_set_cache_coherency(obj, cache_level);
 obj->scratch = phys_size;

 return obj;
}
