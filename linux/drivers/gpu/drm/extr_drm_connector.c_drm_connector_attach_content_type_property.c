
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_connector {TYPE_2__* dev; int base; } ;
struct TYPE_3__ {int content_type_property; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int DRM_MODE_CONTENT_TYPE_NO_DATA ;
 int drm_mode_create_content_type_property (TYPE_2__*) ;
 int drm_object_attach_property (int *,int ,int ) ;

int drm_connector_attach_content_type_property(struct drm_connector *connector)
{
 if (!drm_mode_create_content_type_property(connector->dev))
  drm_object_attach_property(&connector->base,
        connector->dev->mode_config.content_type_property,
        DRM_MODE_CONTENT_TYPE_NO_DATA);
 return 0;
}
