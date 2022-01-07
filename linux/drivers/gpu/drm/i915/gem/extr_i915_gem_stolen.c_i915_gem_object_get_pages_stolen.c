
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct drm_i915_gem_object {TYPE_2__* stolen; TYPE_1__ base; } ;
struct TYPE_4__ {int size; int start; } ;


 scalar_t__ IS_ERR (struct sg_table*) ;
 int PTR_ERR (struct sg_table*) ;
 int __i915_gem_object_set_pages (struct drm_i915_gem_object*,struct sg_table*,int ) ;
 struct sg_table* i915_pages_create_for_stolen (int ,int ,int ) ;

__attribute__((used)) static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
{
 struct sg_table *pages =
  i915_pages_create_for_stolen(obj->base.dev,
          obj->stolen->start,
          obj->stolen->size);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 __i915_gem_object_set_pages(obj, pages, obj->stolen->size);

 return 0;
}
