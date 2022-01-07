
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_mode_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_mode_object* __drm_mode_object_find (struct drm_device*,struct drm_file*,int ,int ) ;

struct drm_mode_object *drm_mode_object_find(struct drm_device *dev,
  struct drm_file *file_priv,
  uint32_t id, uint32_t type)
{
 struct drm_mode_object *obj = ((void*)0);

 obj = __drm_mode_object_find(dev, file_priv, id, type);
 return obj;
}
