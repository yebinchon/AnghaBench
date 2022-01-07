
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_config {int edid_property; } ;
struct drm_connector {int base; TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_mode_config mode_config; } ;


 int drm_object_attach_property (int *,int ,int ) ;

void drm_connector_attach_edid_property(struct drm_connector *connector)
{
 struct drm_mode_config *config = &connector->dev->mode_config;

 drm_object_attach_property(&connector->base,
       config->edid_property,
       0);
}
