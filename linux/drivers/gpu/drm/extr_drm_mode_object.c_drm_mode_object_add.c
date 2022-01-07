
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_mode_object {int dummy; } ;
struct drm_device {int dummy; } ;


 int __drm_mode_object_add (struct drm_device*,struct drm_mode_object*,int ,int,int *) ;

int drm_mode_object_add(struct drm_device *dev,
   struct drm_mode_object *obj, uint32_t obj_type)
{
 return __drm_mode_object_add(dev, obj, obj_type, 1, ((void*)0));
}
