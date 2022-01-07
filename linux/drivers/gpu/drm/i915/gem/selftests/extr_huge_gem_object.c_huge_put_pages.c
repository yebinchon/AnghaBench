
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_2__ {int dirty; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;


 int huge_free_pages (struct drm_i915_gem_object*,struct sg_table*) ;
 int i915_gem_gtt_finish_pages (struct drm_i915_gem_object*,struct sg_table*) ;

__attribute__((used)) static void huge_put_pages(struct drm_i915_gem_object *obj,
      struct sg_table *pages)
{
 i915_gem_gtt_finish_pages(obj, pages);
 huge_free_pages(obj, pages);

 obj->mm.dirty = 0;
}
