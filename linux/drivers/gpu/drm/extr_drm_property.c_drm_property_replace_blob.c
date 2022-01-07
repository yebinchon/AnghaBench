
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {int dummy; } ;


 int drm_property_blob_get (struct drm_property_blob*) ;
 int drm_property_blob_put (struct drm_property_blob*) ;

bool drm_property_replace_blob(struct drm_property_blob **blob,
          struct drm_property_blob *new_blob)
{
 struct drm_property_blob *old_blob = *blob;

 if (old_blob == new_blob)
  return 0;

 drm_property_blob_put(old_blob);
 if (new_blob)
  drm_property_blob_get(new_blob);
 *blob = new_blob;
 return 1;
}
