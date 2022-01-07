
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {int base; } ;


 int drm_mode_object_put (int *) ;

void drm_property_blob_put(struct drm_property_blob *blob)
{
 if (!blob)
  return;

 drm_mode_object_put(&blob->base);
}
