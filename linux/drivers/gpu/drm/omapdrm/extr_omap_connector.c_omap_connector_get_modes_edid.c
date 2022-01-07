
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; } ;
struct omap_connector {int hdmi_mode; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {scalar_t__ (* read_edid ) (struct omap_dss_device*,void*,int ) ;} ;


 int GFP_KERNEL ;
 int MAX_EDID ;
 int connector_status_connected ;
 int drm_add_edid_modes (struct drm_connector*,void*) ;
 int drm_connector_update_edid_property (struct drm_connector*,void*) ;
 int drm_detect_hdmi_monitor (void*) ;
 int drm_edid_is_valid (void*) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int omap_connector_detect (struct drm_connector*,int) ;
 scalar_t__ stub1 (struct omap_dss_device*,void*,int ) ;
 struct omap_connector* to_omap_connector (struct drm_connector*) ;

__attribute__((used)) static int omap_connector_get_modes_edid(struct drm_connector *connector,
      struct omap_dss_device *dssdev)
{
 struct omap_connector *omap_connector = to_omap_connector(connector);
 enum drm_connector_status status;
 void *edid;
 int n;

 status = omap_connector_detect(connector, 0);
 if (status != connector_status_connected)
  goto no_edid;

 edid = kzalloc(MAX_EDID, GFP_KERNEL);
 if (!edid)
  goto no_edid;

 if (dssdev->ops->read_edid(dssdev, edid, MAX_EDID) <= 0 ||
     !drm_edid_is_valid(edid)) {
  kfree(edid);
  goto no_edid;
 }

 drm_connector_update_edid_property(connector, edid);
 n = drm_add_edid_modes(connector, edid);

 omap_connector->hdmi_mode = drm_detect_hdmi_monitor(edid);

 kfree(edid);
 return n;

no_edid:
 drm_connector_update_edid_property(connector, ((void*)0));
 return 0;
}
