
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pages; } ;
struct TYPE_4__ {int resv; } ;
struct drm_i915_gem_object {int cache_dirty; int cache_coherent; scalar_t__ write_domain; TYPE_2__ mm; TYPE_1__ base; } ;
struct TYPE_6__ {int dma; int chain; } ;
struct clflush {TYPE_3__ base; } ;


 int GEM_BUG_ON (int) ;
 int I915_BO_CACHE_COHERENT_FOR_READ ;
 unsigned int I915_CLFLUSH_FORCE ;
 unsigned int I915_CLFLUSH_SYNC ;
 int I915_FENCE_GFP ;
 int I915_FENCE_TIMEOUT ;
 scalar_t__ I915_GEM_DOMAIN_CPU ;
 int __do_clflush (struct drm_i915_gem_object*) ;
 int assert_object_held (struct drm_i915_gem_object*) ;
 struct clflush* clflush_work_create (struct drm_i915_gem_object*) ;
 int dma_fence_work_commit (TYPE_3__*) ;
 int dma_resv_add_excl_fence (int ,int *) ;
 int i915_gem_object_has_struct_page (struct drm_i915_gem_object*) ;
 int i915_sw_fence_await_reservation (int *,int ,int *,int,int ,int ) ;
 int trace_i915_gem_object_clflush (struct drm_i915_gem_object*) ;

bool i915_gem_clflush_object(struct drm_i915_gem_object *obj,
        unsigned int flags)
{
 struct clflush *clflush;

 assert_object_held(obj);
 if (!i915_gem_object_has_struct_page(obj)) {
  obj->cache_dirty = 0;
  return 0;
 }
 if (!(flags & I915_CLFLUSH_FORCE) &&
     obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ)
  return 0;

 trace_i915_gem_object_clflush(obj);

 clflush = ((void*)0);
 if (!(flags & I915_CLFLUSH_SYNC))
  clflush = clflush_work_create(obj);
 if (clflush) {
  i915_sw_fence_await_reservation(&clflush->base.chain,
      obj->base.resv, ((void*)0), 1,
      I915_FENCE_TIMEOUT,
      I915_FENCE_GFP);
  dma_resv_add_excl_fence(obj->base.resv, &clflush->base.dma);
  dma_fence_work_commit(&clflush->base);
 } else if (obj->mm.pages) {
  __do_clflush(obj);
 } else {
  GEM_BUG_ON(obj->write_domain != I915_GEM_DOMAIN_CPU);
 }

 obj->cache_dirty = 0;
 return 1;
}
