
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int * funcs; } ;
struct TYPE_2__ {struct drm_gem_object base; } ;
struct panfrost_gem_object {TYPE_1__ base; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 struct panfrost_gem_object* kzalloc (int,int ) ;
 int panfrost_gem_funcs ;

struct drm_gem_object *panfrost_gem_create_object(struct drm_device *dev, size_t size)
{
 struct panfrost_gem_object *obj;

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ((void*)0);

 obj->base.base.funcs = &panfrost_gem_funcs;

 return &obj->base.base;
}
