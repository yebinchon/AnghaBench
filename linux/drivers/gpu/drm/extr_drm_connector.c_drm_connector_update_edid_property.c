
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct edid {int extensions; } ;
struct TYPE_4__ {int edid_property; int non_desktop_property; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct TYPE_3__ {int non_desktop; } ;
struct drm_connector {int base; int edid_blob_ptr; TYPE_1__ display_info; scalar_t__ override_edid; struct drm_device* dev; } ;


 int EDID_LENGTH ;
 int drm_add_display_info (struct drm_connector*,struct edid const*) ;
 int drm_connector_set_tile_property (struct drm_connector*) ;
 int drm_object_property_set_value (int *,int ,int ) ;
 int drm_property_replace_global_blob (struct drm_device*,int *,size_t,struct edid const*,int *,int ) ;
 int drm_reset_display_info (struct drm_connector*) ;

int drm_connector_update_edid_property(struct drm_connector *connector,
           const struct edid *edid)
{
 struct drm_device *dev = connector->dev;
 size_t size = 0;
 int ret;


 if (connector->override_edid)
  return 0;

 if (edid)
  size = EDID_LENGTH * (1 + edid->extensions);
 if (edid)
  drm_add_display_info(connector, edid);
 else
  drm_reset_display_info(connector);

 drm_object_property_set_value(&connector->base,
          dev->mode_config.non_desktop_property,
          connector->display_info.non_desktop);

 ret = drm_property_replace_global_blob(dev,
            &connector->edid_blob_ptr,
                                        size,
                                        edid,
                                        &connector->base,
                                        dev->mode_config.edid_property);
 if (ret)
  return ret;
 return drm_connector_set_tile_property(connector);
}
