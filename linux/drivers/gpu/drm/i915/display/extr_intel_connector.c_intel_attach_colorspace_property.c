
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int colorspace_property; int base; } ;


 int drm_mode_create_colorspace_property (struct drm_connector*) ;
 int drm_object_attach_property (int *,int ,int ) ;

void
intel_attach_colorspace_property(struct drm_connector *connector)
{
 if (!drm_mode_create_colorspace_property(connector))
  drm_object_attach_property(&connector->base,
        connector->colorspace_property, 0);
}
