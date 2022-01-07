
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 unsigned long DW_PER_PAGE ;
 int GEM_BUG_ON (int) ;
 int IS_ALIGNED (unsigned long,unsigned long) ;
 unsigned long fake_page_count (struct drm_i915_gem_object*) ;

__attribute__((used)) static unsigned long max_dwords(struct drm_i915_gem_object *obj)
{
 unsigned long npages = fake_page_count(obj);

 GEM_BUG_ON(!IS_ALIGNED(npages, DW_PER_PAGE));
 return npages / DW_PER_PAGE;
}
