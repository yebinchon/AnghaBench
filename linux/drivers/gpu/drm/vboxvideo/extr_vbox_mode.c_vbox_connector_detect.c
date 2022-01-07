
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disconnected; } ;
struct vbox_connector {TYPE_1__ mode_hint; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_disconnected ;
 struct vbox_connector* to_vbox_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
vbox_connector_detect(struct drm_connector *connector, bool force)
{
 struct vbox_connector *vbox_connector;

 vbox_connector = to_vbox_connector(connector);

 return vbox_connector->mode_hint.disconnected ?
     connector_status_disconnected : connector_status_connected;
}
