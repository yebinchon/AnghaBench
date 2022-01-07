
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gma_encoder {TYPE_1__* i2c_bus; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int adapter; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int kfree (struct edid*) ;

__attribute__((used)) static int cdv_hdmi_get_modes(struct drm_connector *connector)
{
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);
 struct edid *edid = ((void*)0);
 int ret = 0;

 edid = drm_get_edid(connector, &gma_encoder->i2c_bus->adapter);
 if (edid) {
  drm_connector_update_edid_property(connector, edid);
  ret = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }
 return ret;
}
