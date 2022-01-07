
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {int base; } ;


 int drm_mode_object_get (int *) ;

struct drm_property_blob *drm_property_blob_get(struct drm_property_blob *blob)
{
 drm_mode_object_get(&blob->base);
 return blob;
}
