
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct drm_dp_mst_port {TYPE_3__ aux; } ;
struct drm_connector {TYPE_2__* kdev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ kobj; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int drm_dp_aux_unregister_devnode (TYPE_3__*) ;

void drm_dp_mst_connector_early_unregister(struct drm_connector *connector,
        struct drm_dp_mst_port *port)
{
 DRM_DEBUG_KMS("unregistering %s remote bus for %s\n",
        port->aux.name, connector->kdev->kobj.name);
 drm_dp_aux_unregister_devnode(&port->aux);
}
