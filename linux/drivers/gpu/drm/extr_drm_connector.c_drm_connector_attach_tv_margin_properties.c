
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_bottom_margin_property; int tv_top_margin_property; int tv_right_margin_property; int tv_left_margin_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int base; struct drm_device* dev; } ;


 int drm_object_attach_property (int *,int ,int ) ;

void drm_connector_attach_tv_margin_properties(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;

 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_left_margin_property,
       0);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_right_margin_property,
       0);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_top_margin_property,
       0);
 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_bottom_margin_property,
       0);
}
