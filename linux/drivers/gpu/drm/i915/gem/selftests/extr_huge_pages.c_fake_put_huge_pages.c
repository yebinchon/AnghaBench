
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_2__ {int dirty; int madv; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;


 int I915_MADV_WILLNEED ;
 int fake_free_huge_pages (struct drm_i915_gem_object*,struct sg_table*) ;

__attribute__((used)) static void fake_put_huge_pages(struct drm_i915_gem_object *obj,
    struct sg_table *pages)
{
 fake_free_huge_pages(obj, pages);
 obj->mm.dirty = 0;
 obj->mm.madv = I915_MADV_WILLNEED;
}
