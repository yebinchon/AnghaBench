
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; } ;
struct drm_connector {int connector_type; int name; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {scalar_t__ (* detect ) (struct omap_dss_device*) ;} ;





 int OMAP_DSS_DEVICE_OP_DETECT ;
 int VERB (char*,int ,int,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 struct omap_dss_device* omap_connector_find_device (struct drm_connector*,int ) ;
 int omap_connector_hpd_notify (struct drm_connector*,int) ;
 scalar_t__ stub1 (struct omap_dss_device*) ;

__attribute__((used)) static enum drm_connector_status omap_connector_detect(
  struct drm_connector *connector, bool force)
{
 struct omap_dss_device *dssdev;
 enum drm_connector_status status;

 dssdev = omap_connector_find_device(connector,
         OMAP_DSS_DEVICE_OP_DETECT);

 if (dssdev) {
  status = dssdev->ops->detect(dssdev)
         ? connector_status_connected
         : connector_status_disconnected;

  omap_connector_hpd_notify(connector, status);
 } else {
  switch (connector->connector_type) {
  case 130:
  case 128:
  case 129:
   status = connector_status_connected;
   break;
  default:
   status = connector_status_unknown;
   break;
  }
 }

 VERB("%s: %d (force=%d)", connector->name, status, force);

 return status;
}
