
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int * funcs; } ;
struct drm_gem_cma_object {struct drm_gem_object base; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 int drm_cma_gem_default_funcs ;
 struct drm_gem_cma_object* kzalloc (int,int ) ;

struct drm_gem_object *
drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_t size)
{
 struct drm_gem_cma_object *cma_obj;

 cma_obj = kzalloc(sizeof(*cma_obj), GFP_KERNEL);
 if (!cma_obj)
  return ((void*)0);

 cma_obj->base.funcs = &drm_cma_gem_default_funcs;

 return &cma_obj->base;
}
