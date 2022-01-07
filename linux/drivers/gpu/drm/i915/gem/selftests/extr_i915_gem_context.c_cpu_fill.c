
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_gem_object {int read_domains; scalar_t__ write_domain; TYPE_1__ base; } ;


 unsigned int DW_PER_PAGE ;
 int HAS_LLC (int ) ;
 int I915_GEM_DOMAIN_CPU ;
 int I915_GEM_DOMAIN_GTT ;
 int PAGE_SIZE ;
 int drm_clflush_virt_range (int *,int ) ;
 int i915_gem_object_finish_access (struct drm_i915_gem_object*) ;
 int i915_gem_object_get_page (struct drm_i915_gem_object*,unsigned int) ;
 int i915_gem_object_prepare_write (struct drm_i915_gem_object*,unsigned int*) ;
 int * kmap_atomic (int ) ;
 int kunmap_atomic (int *) ;
 unsigned int real_page_count (struct drm_i915_gem_object*) ;
 int to_i915 (int ) ;

__attribute__((used)) static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
{
 const bool has_llc = HAS_LLC(to_i915(obj->base.dev));
 unsigned int n, m, need_flush;
 int err;

 err = i915_gem_object_prepare_write(obj, &need_flush);
 if (err)
  return err;

 for (n = 0; n < real_page_count(obj); n++) {
  u32 *map;

  map = kmap_atomic(i915_gem_object_get_page(obj, n));
  for (m = 0; m < DW_PER_PAGE; m++)
   map[m] = value;
  if (!has_llc)
   drm_clflush_virt_range(map, PAGE_SIZE);
  kunmap_atomic(map);
 }

 i915_gem_object_finish_access(obj);
 obj->read_domains = I915_GEM_DOMAIN_GTT | I915_GEM_DOMAIN_CPU;
 obj->write_domain = 0;
 return 0;
}
