
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_property_blob {int dummy; } ;
struct drm_mode_object {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_OBJECT_BLOB ;
 struct drm_mode_object* __drm_mode_object_find (struct drm_device*,int *,int ,int ) ;
 struct drm_property_blob* obj_to_blob (struct drm_mode_object*) ;

struct drm_property_blob *drm_property_lookup_blob(struct drm_device *dev,
                uint32_t id)
{
 struct drm_mode_object *obj;
 struct drm_property_blob *blob = ((void*)0);

 obj = __drm_mode_object_find(dev, ((void*)0), id, DRM_MODE_OBJECT_BLOB);
 if (obj)
  blob = obj_to_blob(obj);
 return blob;
}
