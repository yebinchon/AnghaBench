
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int * funcs; } ;
struct TYPE_2__ {struct drm_gem_object base; } ;
struct v3d_bo {TYPE_1__ base; int unref_head; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct v3d_bo* kzalloc (int,int ) ;
 int v3d_gem_funcs ;

struct drm_gem_object *v3d_create_object(struct drm_device *dev, size_t size)
{
 struct v3d_bo *bo;
 struct drm_gem_object *obj;

 if (size == 0)
  return ((void*)0);

 bo = kzalloc(sizeof(*bo), GFP_KERNEL);
 if (!bo)
  return ((void*)0);
 obj = &bo->base.base;

 obj->funcs = &v3d_gem_funcs;

 INIT_LIST_HEAD(&bo->unref_head);

 return &bo->base.base;
}
