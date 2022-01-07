
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ reply_type; } ;
struct drm_dp_sideband_msg_tx {TYPE_1__ reply; struct drm_dp_mst_branch* dst; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int port_num; int parent; } ;
struct drm_dp_mst_branch {int dummy; } ;


 scalar_t__ DP_SIDEBAND_REPLY_NAK ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int build_dpcd_write (struct drm_dp_sideband_msg_tx*,int ,int,int,int *) ;
 struct drm_dp_mst_branch* drm_dp_mst_topology_get_mstb_validated (struct drm_dp_mst_topology_mgr*,int ) ;
 int drm_dp_mst_topology_put_mstb (struct drm_dp_mst_branch*) ;
 int drm_dp_mst_wait_tx_reply (struct drm_dp_mst_branch*,struct drm_dp_sideband_msg_tx*) ;
 int drm_dp_queue_down_tx (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ;
 int kfree (struct drm_dp_sideband_msg_tx*) ;
 struct drm_dp_sideband_msg_tx* kzalloc (int,int ) ;

__attribute__((used)) static int drm_dp_send_dpcd_write(struct drm_dp_mst_topology_mgr *mgr,
      struct drm_dp_mst_port *port,
      int offset, int size, u8 *bytes)
{
 int len;
 int ret;
 struct drm_dp_sideband_msg_tx *txmsg;
 struct drm_dp_mst_branch *mstb;

 mstb = drm_dp_mst_topology_get_mstb_validated(mgr, port->parent);
 if (!mstb)
  return -EINVAL;

 txmsg = kzalloc(sizeof(*txmsg), GFP_KERNEL);
 if (!txmsg) {
  ret = -ENOMEM;
  goto fail_put;
 }

 len = build_dpcd_write(txmsg, port->port_num, offset, size, bytes);
 txmsg->dst = mstb;

 drm_dp_queue_down_tx(mgr, txmsg);

 ret = drm_dp_mst_wait_tx_reply(mstb, txmsg);
 if (ret > 0) {
  if (txmsg->reply.reply_type == DP_SIDEBAND_REPLY_NAK)
   ret = -EIO;
  else
   ret = 0;
 }
 kfree(txmsg);
fail_put:
 drm_dp_mst_topology_put_mstb(mstb);
 return ret;
}
