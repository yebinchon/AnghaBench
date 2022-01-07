
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ madv; int dirty; } ;
struct drm_i915_gem_object {int read_domains; int cache_coherent; TYPE_1__ mm; } ;


 int GEM_BUG_ON (int) ;
 int I915_BO_CACHE_COHERENT_FOR_READ ;
 int I915_GEM_DOMAIN_CPU ;
 scalar_t__ I915_MADV_DONTNEED ;
 scalar_t__ __I915_MADV_PURGED ;
 int __start_cpu_write (struct drm_i915_gem_object*) ;
 int drm_clflush_sg (struct sg_table*) ;

void
__i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
    struct sg_table *pages,
    bool needs_clflush)
{
 GEM_BUG_ON(obj->mm.madv == __I915_MADV_PURGED);

 if (obj->mm.madv == I915_MADV_DONTNEED)
  obj->mm.dirty = 0;

 if (needs_clflush &&
     (obj->read_domains & I915_GEM_DOMAIN_CPU) == 0 &&
     !(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
  drm_clflush_sg(pages);

 __start_cpu_write(obj);
}
