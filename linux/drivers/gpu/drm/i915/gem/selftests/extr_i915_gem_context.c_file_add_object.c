
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle_count; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int object_idr; } ;


 int GEM_BUG_ON (int ) ;
 int GFP_KERNEL ;
 int i915_gem_object_get (struct drm_i915_gem_object*) ;
 int idr_alloc (int *,TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static int file_add_object(struct drm_file *file,
       struct drm_i915_gem_object *obj)
{
 int err;

 GEM_BUG_ON(obj->base.handle_count);


 err = idr_alloc(&file->object_idr, &obj->base, 1, 0, GFP_KERNEL);
 if (err < 0)
  return err;

 i915_gem_object_get(obj);
 obj->base.handle_count++;
 return 0;
}
