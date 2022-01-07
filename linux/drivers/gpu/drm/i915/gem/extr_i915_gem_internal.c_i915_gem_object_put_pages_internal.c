
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_2__ {int dirty; int madv; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;


 int I915_MADV_WILLNEED ;
 int i915_gem_gtt_finish_pages (struct drm_i915_gem_object*,struct sg_table*) ;
 int internal_free_pages (struct sg_table*) ;

__attribute__((used)) static void i915_gem_object_put_pages_internal(struct drm_i915_gem_object *obj,
            struct sg_table *pages)
{
 i915_gem_gtt_finish_pages(obj, pages);
 internal_free_pages(pages);

 obj->mm.dirty = 0;
 obj->mm.madv = I915_MADV_WILLNEED;
}
