
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_height; int max_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {struct drm_device* dev; } ;


 int drm_add_modes_noedid (struct drm_connector*,int ,int ) ;

__attribute__((used)) static int malidp_mw_connector_get_modes(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;

 return drm_add_modes_noedid(connector, dev->mode_config.max_width,
        dev->mode_config.max_height);
}
