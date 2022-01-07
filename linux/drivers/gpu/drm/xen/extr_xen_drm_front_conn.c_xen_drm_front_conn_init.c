
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_drm_front_drm_pipeline {int conn_connected; } ;
struct xen_drm_front_drm_info {int drm_dev; } ;
struct drm_connector {int polled; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_DISCONNECT ;
 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int connector_funcs ;
 int connector_helper_funcs ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 struct xen_drm_front_drm_pipeline* to_xen_drm_pipeline (struct drm_connector*) ;

int xen_drm_front_conn_init(struct xen_drm_front_drm_info *drm_info,
       struct drm_connector *connector)
{
 struct xen_drm_front_drm_pipeline *pipeline =
   to_xen_drm_pipeline(connector);

 drm_connector_helper_add(connector, &connector_helper_funcs);

 pipeline->conn_connected = 1;

 connector->polled = DRM_CONNECTOR_POLL_CONNECT |
   DRM_CONNECTOR_POLL_DISCONNECT;

 return drm_connector_init(drm_info->drm_dev, connector,
      &connector_funcs, DRM_MODE_CONNECTOR_VIRTUAL);
}
