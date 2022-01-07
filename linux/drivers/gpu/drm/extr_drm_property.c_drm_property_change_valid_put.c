
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property {int dummy; } ;
struct drm_mode_object {int dummy; } ;


 int DRM_MODE_PROP_BLOB ;
 int DRM_MODE_PROP_OBJECT ;
 int drm_mode_object_put (struct drm_mode_object*) ;
 int drm_property_blob_put (int ) ;
 scalar_t__ drm_property_type_is (struct drm_property*,int ) ;
 int obj_to_blob (struct drm_mode_object*) ;

void drm_property_change_valid_put(struct drm_property *property,
  struct drm_mode_object *ref)
{
 if (!ref)
  return;

 if (drm_property_type_is(property, DRM_MODE_PROP_OBJECT)) {
  drm_mode_object_put(ref);
 } else if (drm_property_type_is(property, DRM_MODE_PROP_BLOB))
  drm_property_blob_put(obj_to_blob(ref));
}
