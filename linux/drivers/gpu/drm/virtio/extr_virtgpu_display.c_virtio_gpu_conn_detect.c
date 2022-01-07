
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; } ;
struct virtio_gpu_output {TYPE_1__ info; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_disconnected ;
 struct virtio_gpu_output* drm_connector_to_virtio_gpu_output (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status virtio_gpu_conn_detect(
   struct drm_connector *connector,
   bool force)
{
 struct virtio_gpu_output *output =
  drm_connector_to_virtio_gpu_output(connector);

 if (output->info.enabled)
  return connector_status_connected;
 else
  return connector_status_disconnected;
}
