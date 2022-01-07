
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;

__attribute__((used)) static enum drm_connector_status
sun6i_dsi_connector_detect(struct drm_connector *connector, bool force)
{
 return connector_status_connected;
}
