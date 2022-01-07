
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int dirty; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;


 struct page* i915_gem_object_get_page (struct drm_i915_gem_object*,unsigned int) ;
 int set_page_dirty (struct page*) ;

struct page *
i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
          unsigned int n)
{
 struct page *page;

 page = i915_gem_object_get_page(obj, n);
 if (!obj->mm.dirty)
  set_page_dirty(page);

 return page;
}
