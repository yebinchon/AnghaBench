
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 unsigned int CLFLUSH_BEFORE ;
 unsigned long PAGE_SHIFT ;
 int drm_clflush_virt_range (int *,int) ;
 int i915_gem_object_finish_access (struct drm_i915_gem_object*) ;
 struct page* i915_gem_object_get_page (struct drm_i915_gem_object*,unsigned long) ;
 int i915_gem_object_prepare_read (struct drm_i915_gem_object*,unsigned int*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int offset_in_page (unsigned long) ;

__attribute__((used)) static int cpu_get(struct drm_i915_gem_object *obj,
     unsigned long offset,
     u32 *v)
{
 unsigned int needs_clflush;
 struct page *page;
 void *map;
 u32 *cpu;
 int err;

 err = i915_gem_object_prepare_read(obj, &needs_clflush);
 if (err)
  return err;

 page = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
 map = kmap_atomic(page);
 cpu = map + offset_in_page(offset);

 if (needs_clflush & CLFLUSH_BEFORE)
  drm_clflush_virt_range(cpu, sizeof(*cpu));

 *v = *cpu;

 kunmap_atomic(map);
 i915_gem_object_finish_access(obj);

 return 0;
}
