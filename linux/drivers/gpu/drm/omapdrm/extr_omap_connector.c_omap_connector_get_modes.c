
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; } ;
struct omap_connector {TYPE_2__* output; } ;
struct drm_connector {int name; } ;
struct TYPE_4__ {scalar_t__ panel; } ;
struct TYPE_3__ {int (* get_modes ) (struct omap_dss_device*,struct drm_connector*) ;} ;


 int DBG (char*,int ) ;
 int OMAP_DSS_DEVICE_OP_EDID ;
 int OMAP_DSS_DEVICE_OP_MODES ;
 int drm_panel_get_modes (scalar_t__) ;
 struct omap_dss_device* omap_connector_find_device (struct drm_connector*,int ) ;
 int omap_connector_get_modes_edid (struct drm_connector*,struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,struct drm_connector*) ;
 struct omap_connector* to_omap_connector (struct drm_connector*) ;

__attribute__((used)) static int omap_connector_get_modes(struct drm_connector *connector)
{
 struct omap_connector *omap_connector = to_omap_connector(connector);
 struct omap_dss_device *dssdev;

 DBG("%s", connector->name);





 dssdev = omap_connector_find_device(connector,
         OMAP_DSS_DEVICE_OP_EDID);
 if (dssdev)
  return omap_connector_get_modes_edid(connector, dssdev);





 dssdev = omap_connector_find_device(connector,
         OMAP_DSS_DEVICE_OP_MODES);
 if (dssdev)
  return dssdev->ops->get_modes(dssdev, connector);





 if (omap_connector->output->panel)
  return drm_panel_get_modes(omap_connector->output->panel);






 return 0;
}
