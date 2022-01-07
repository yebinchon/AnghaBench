
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_port {int ddps; int pdt; int input; scalar_t__ available_pbn; int ldps; int mcs; } ;
struct drm_dp_mst_branch {TYPE_1__* mgr; } ;
struct drm_dp_connection_status_notify {int peer_device_type; int displayport_device_plug_status; int legacy_device_plug_status; int message_capability_status; int port_number; } ;
struct TYPE_2__ {int work; } ;


 struct drm_dp_mst_port* drm_dp_get_port (struct drm_dp_mst_branch*,int ) ;
 int drm_dp_mst_topology_put_port (struct drm_dp_mst_port*) ;
 scalar_t__ drm_dp_port_setup_pdt (struct drm_dp_mst_port*) ;
 int drm_dp_port_teardown_pdt (struct drm_dp_mst_port*,int) ;
 int queue_work (int ,int *) ;
 int system_long_wq ;

__attribute__((used)) static void drm_dp_update_port(struct drm_dp_mst_branch *mstb,
          struct drm_dp_connection_status_notify *conn_stat)
{
 struct drm_dp_mst_port *port;
 int old_pdt;
 int old_ddps;
 bool dowork = 0;
 port = drm_dp_get_port(mstb, conn_stat->port_number);
 if (!port)
  return;

 old_ddps = port->ddps;
 old_pdt = port->pdt;
 port->pdt = conn_stat->peer_device_type;
 port->mcs = conn_stat->message_capability_status;
 port->ldps = conn_stat->legacy_device_plug_status;
 port->ddps = conn_stat->displayport_device_plug_status;

 if (old_ddps != port->ddps) {
  if (port->ddps) {
   dowork = 1;
  } else {
   port->available_pbn = 0;
  }
 }
 if (old_pdt != port->pdt && !port->input) {
  drm_dp_port_teardown_pdt(port, old_pdt);

  if (drm_dp_port_setup_pdt(port))
   dowork = 1;
 }

 drm_dp_mst_topology_put_port(port);
 if (dowork)
  queue_work(system_long_wq, &mstb->mgr->work);

}
