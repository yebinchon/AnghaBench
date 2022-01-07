
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void i915_gem_object_put_pages_stolen(struct drm_i915_gem_object *obj,
          struct sg_table *pages)
{

 sg_free_table(pages);
 kfree(pages);
}
