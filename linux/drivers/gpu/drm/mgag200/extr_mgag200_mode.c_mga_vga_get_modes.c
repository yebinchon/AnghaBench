
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mga_connector {TYPE_1__* i2c; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int adapter; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 int kfree (struct edid*) ;
 struct mga_connector* to_mga_connector (struct drm_connector*) ;

__attribute__((used)) static int mga_vga_get_modes(struct drm_connector *connector)
{
 struct mga_connector *mga_connector = to_mga_connector(connector);
 struct edid *edid;
 int ret = 0;

 edid = drm_get_edid(connector, &mga_connector->i2c->adapter);
 if (edid) {
  drm_connector_update_edid_property(connector, edid);
  ret = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }
 return ret;
}
