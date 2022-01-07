
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; int is_remote; int ddc; int dev; } ;
struct drm_dp_mst_port {scalar_t__ port_num; int pdt; int ddps; int connector; TYPE_1__ aux; int cached_edid; int next; int input; int mstb; scalar_t__ available_pbn; int num_sdp_stream_sinks; int num_sdp_streams; int dpcd_rev; int ldps; int mcs; TYPE_3__* mgr; struct drm_dp_mst_branch* parent; int malloc_kref; int topology_kref; } ;
struct drm_dp_mst_branch {TYPE_3__* mgr; int ports; } ;
struct drm_dp_link_addr_reply_port {scalar_t__ port_number; int peer_device_type; int ddps; int num_sdp_stream_sinks; int num_sdp_streams; int dpcd_revision; int legacy_device_plug_status; int mcs; int input_port; } ;
struct drm_device {int dev; } ;
typedef int proppath ;
struct TYPE_8__ {TYPE_2__* cbs; int lock; } ;
struct TYPE_7__ {int (* register_connector ) (int ) ;int (* add_connector ) (TYPE_3__*,struct drm_dp_mst_port*,char*) ;} ;


 scalar_t__ DP_MST_LOGICAL_PORT_0 ;
 int DP_PEER_DEVICE_DP_LEGACY_CONV ;
 int DP_PEER_DEVICE_SST_SINK ;
 int GFP_KERNEL ;
 int build_mst_prop_path (struct drm_dp_mst_branch*,scalar_t__,char*,int) ;
 int drm_connector_set_tile_property (int ) ;
 struct drm_dp_mst_port* drm_dp_get_port (struct drm_dp_mst_branch*,scalar_t__) ;
 int drm_dp_mst_get_mstb_malloc (struct drm_dp_mst_branch*) ;
 int drm_dp_mst_topology_get_port (struct drm_dp_mst_port*) ;
 int drm_dp_mst_topology_put_port (struct drm_dp_mst_port*) ;
 int drm_dp_port_setup_pdt (struct drm_dp_mst_port*) ;
 int drm_dp_port_teardown_pdt (struct drm_dp_mst_port*,int) ;
 int drm_dp_send_enum_path_resources (TYPE_3__*,struct drm_dp_mst_branch*,struct drm_dp_mst_port*) ;
 int drm_dp_send_link_address (TYPE_3__*,int ) ;
 int drm_get_edid (int ,int *) ;
 int kref_init (int *) ;
 struct drm_dp_mst_port* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_3__*,struct drm_dp_mst_port*,char*) ;
 int stub2 (int ) ;

__attribute__((used)) static void drm_dp_add_port(struct drm_dp_mst_branch *mstb,
       struct drm_device *dev,
       struct drm_dp_link_addr_reply_port *port_msg)
{
 struct drm_dp_mst_port *port;
 bool ret;
 bool created = 0;
 int old_pdt = 0;
 int old_ddps = 0;

 port = drm_dp_get_port(mstb, port_msg->port_number);
 if (!port) {
  port = kzalloc(sizeof(*port), GFP_KERNEL);
  if (!port)
   return;
  kref_init(&port->topology_kref);
  kref_init(&port->malloc_kref);
  port->parent = mstb;
  port->port_num = port_msg->port_number;
  port->mgr = mstb->mgr;
  port->aux.name = "DPMST";
  port->aux.dev = dev->dev;
  port->aux.is_remote = 1;





  drm_dp_mst_get_mstb_malloc(mstb);

  created = 1;
 } else {
  old_pdt = port->pdt;
  old_ddps = port->ddps;
 }

 port->pdt = port_msg->peer_device_type;
 port->input = port_msg->input_port;
 port->mcs = port_msg->mcs;
 port->ddps = port_msg->ddps;
 port->ldps = port_msg->legacy_device_plug_status;
 port->dpcd_rev = port_msg->dpcd_revision;
 port->num_sdp_streams = port_msg->num_sdp_streams;
 port->num_sdp_stream_sinks = port_msg->num_sdp_stream_sinks;



 if (created) {
  mutex_lock(&mstb->mgr->lock);
  drm_dp_mst_topology_get_port(port);
  list_add(&port->next, &mstb->ports);
  mutex_unlock(&mstb->mgr->lock);
 }

 if (old_ddps != port->ddps) {
  if (port->ddps) {
   if (!port->input) {
    drm_dp_send_enum_path_resources(mstb->mgr,
        mstb, port);
   }
  } else {
   port->available_pbn = 0;
  }
 }

 if (old_pdt != port->pdt && !port->input) {
  drm_dp_port_teardown_pdt(port, old_pdt);

  ret = drm_dp_port_setup_pdt(port);
  if (ret == 1)
   drm_dp_send_link_address(mstb->mgr, port->mstb);
 }

 if (created && !port->input) {
  char proppath[255];

  build_mst_prop_path(mstb, port->port_num, proppath,
        sizeof(proppath));
  port->connector = (*mstb->mgr->cbs->add_connector)(mstb->mgr,
           port,
           proppath);
  if (!port->connector) {

   mutex_lock(&mstb->mgr->lock);
   list_del(&port->next);
   mutex_unlock(&mstb->mgr->lock);

   drm_dp_mst_topology_put_port(port);
   goto out;
  }
  if ((port->pdt == DP_PEER_DEVICE_DP_LEGACY_CONV ||
       port->pdt == DP_PEER_DEVICE_SST_SINK) &&
      port->port_num >= DP_MST_LOGICAL_PORT_0) {
   port->cached_edid = drm_get_edid(port->connector,
        &port->aux.ddc);
   drm_connector_set_tile_property(port->connector);
  }
  (*mstb->mgr->cbs->register_connector)(port->connector);
 }

out:

 drm_dp_mst_topology_put_port(port);
}
