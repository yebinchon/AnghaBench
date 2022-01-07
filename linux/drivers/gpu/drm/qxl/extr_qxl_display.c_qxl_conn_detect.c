
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_output {size_t index; } ;
struct qxl_device {TYPE_1__* client_monitors_config; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {size_t count; int * heads; } ;


 int DRM_DEBUG (char*,size_t,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct qxl_output* drm_connector_to_qxl_output (struct drm_connector*) ;
 scalar_t__ qxl_head_enabled (int *) ;

__attribute__((used)) static enum drm_connector_status qxl_conn_detect(
   struct drm_connector *connector,
   bool force)
{
 struct qxl_output *output =
  drm_connector_to_qxl_output(connector);
 struct drm_device *ddev = connector->dev;
 struct qxl_device *qdev = ddev->dev_private;
 bool connected = 0;


 if (!qdev->client_monitors_config) {
  if (output->index == 0)
   connected = 1;
 } else
  connected = qdev->client_monitors_config->count > output->index &&
       qxl_head_enabled(&qdev->client_monitors_config->heads[output->index]);

 DRM_DEBUG("#%d connected: %d\n", output->index, connected);

 return connected ? connector_status_connected
    : connector_status_disconnected;
}
