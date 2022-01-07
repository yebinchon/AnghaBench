
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv50_mstc {TYPE_2__* port; } ;
struct drm_connector {TYPE_1__* dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_4__ {int mgr; } ;
struct TYPE_3__ {int dev; } ;


 int EACCES ;
 int connector_status_disconnected ;
 scalar_t__ drm_connector_is_unregistered (struct drm_connector*) ;
 int drm_dp_mst_detect_port (struct drm_connector*,int ,TYPE_2__*) ;
 struct nv50_mstc* nv50_mstc (struct drm_connector*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static enum drm_connector_status
nv50_mstc_detect(struct drm_connector *connector, bool force)
{
 struct nv50_mstc *mstc = nv50_mstc(connector);
 enum drm_connector_status conn_status;
 int ret;

 if (drm_connector_is_unregistered(connector))
  return connector_status_disconnected;

 ret = pm_runtime_get_sync(connector->dev->dev);
 if (ret < 0 && ret != -EACCES)
  return connector_status_disconnected;

 conn_status = drm_dp_mst_detect_port(connector, mstc->port->mgr,
          mstc->port);

 pm_runtime_mark_last_busy(connector->dev->dev);
 pm_runtime_put_autosuspend(connector->dev->dev);
 return conn_status;
}
