
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct iw_cm_conn_param {void* private_data; int ord; int ird; void* private_data_len; } ;
struct i40iw_device {int dummy; } ;
struct TYPE_4__ {int addr; void* size; } ;
struct TYPE_3__ {int client; void* rcv_wscale; void* snd_wscale; int rcv_wnd; int snd_wnd; int max_snd_wnd; int loc_seq_num; int rcv_nxt; } ;
struct i40iw_cm_node {scalar_t__ ord_size; scalar_t__ ird_size; int state; int pdata_buf; TYPE_2__ pdata; TYPE_1__ tcp_cntxt; struct i40iw_cm_node* loopbackpartner; int vlan_id; int rem_port; } ;
struct i40iw_cm_listener {int cm_id; } ;
struct i40iw_cm_info {int ipv4; int cm_id; int loc_port; int rem_port; int rem_addr; int loc_addr; } ;
struct i40iw_cm_core {int stats_loopbacks; } ;


 int ECONNREFUSED ;
 int ENOMEM ;
 struct i40iw_cm_node* ERR_PTR (int ) ;
 void* I40IW_CM_DEFAULT_RCV_WND_SCALE ;
 int I40IW_CM_LISTENER_ACTIVE_STATE ;
 int I40IW_CM_STATE_OFFLOADED ;
 int I40IW_CM_STATE_SYN_SENT ;
 struct i40iw_cm_listener* i40iw_find_listener (struct i40iw_cm_core*,int ,int ,int ,int ) ;
 struct i40iw_cm_node* i40iw_make_cm_node (struct i40iw_cm_core*,struct i40iw_device*,struct i40iw_cm_info*,struct i40iw_cm_listener*) ;
 int i40iw_record_ird_ord (struct i40iw_cm_node*,int ,int ) ;
 int i40iw_rem_ref_cm_node (struct i40iw_cm_node*) ;
 int memcmp (int ,int ,int) ;
 int memcpy (int ,void const*,void*) ;

__attribute__((used)) static struct i40iw_cm_node *i40iw_create_cm_node(
     struct i40iw_cm_core *cm_core,
     struct i40iw_device *iwdev,
     struct iw_cm_conn_param *conn_param,
     struct i40iw_cm_info *cm_info)
{
 struct i40iw_cm_node *cm_node;
 struct i40iw_cm_listener *loopback_remotelistener;
 struct i40iw_cm_node *loopback_remotenode;
 struct i40iw_cm_info loopback_cm_info;

 u16 private_data_len = conn_param->private_data_len;
 const void *private_data = conn_param->private_data;


 cm_node = i40iw_make_cm_node(cm_core, iwdev, cm_info, ((void*)0));
 if (!cm_node)
  return ERR_PTR(-ENOMEM);

 cm_node->tcp_cntxt.client = 1;
 cm_node->tcp_cntxt.rcv_wscale = I40IW_CM_DEFAULT_RCV_WND_SCALE;

 i40iw_record_ird_ord(cm_node, conn_param->ird, conn_param->ord);

 if (!memcmp(cm_info->loc_addr, cm_info->rem_addr, sizeof(cm_info->loc_addr))) {
  loopback_remotelistener = i40iw_find_listener(
      cm_core,
      cm_info->rem_addr,
      cm_node->rem_port,
      cm_node->vlan_id,
      I40IW_CM_LISTENER_ACTIVE_STATE);
  if (!loopback_remotelistener) {
   i40iw_rem_ref_cm_node(cm_node);
   return ERR_PTR(-ECONNREFUSED);
  } else {
   loopback_cm_info = *cm_info;
   loopback_cm_info.loc_port = cm_info->rem_port;
   loopback_cm_info.rem_port = cm_info->loc_port;
   loopback_cm_info.cm_id = loopback_remotelistener->cm_id;
   loopback_cm_info.ipv4 = cm_info->ipv4;
   loopback_remotenode = i40iw_make_cm_node(cm_core,
         iwdev,
         &loopback_cm_info,
         loopback_remotelistener);
   if (!loopback_remotenode) {
    i40iw_rem_ref_cm_node(cm_node);
    return ERR_PTR(-ENOMEM);
   }
   cm_core->stats_loopbacks++;
   loopback_remotenode->loopbackpartner = cm_node;
   loopback_remotenode->tcp_cntxt.rcv_wscale =
    I40IW_CM_DEFAULT_RCV_WND_SCALE;
   cm_node->loopbackpartner = loopback_remotenode;
   memcpy(loopback_remotenode->pdata_buf, private_data,
          private_data_len);
   loopback_remotenode->pdata.size = private_data_len;

   if (loopback_remotenode->ord_size > cm_node->ird_size)
    loopback_remotenode->ord_size =
     cm_node->ird_size;

   cm_node->state = I40IW_CM_STATE_OFFLOADED;
   cm_node->tcp_cntxt.rcv_nxt =
    loopback_remotenode->tcp_cntxt.loc_seq_num;
   loopback_remotenode->tcp_cntxt.rcv_nxt =
    cm_node->tcp_cntxt.loc_seq_num;
   cm_node->tcp_cntxt.max_snd_wnd =
    loopback_remotenode->tcp_cntxt.rcv_wnd;
   loopback_remotenode->tcp_cntxt.max_snd_wnd = cm_node->tcp_cntxt.rcv_wnd;
   cm_node->tcp_cntxt.snd_wnd = loopback_remotenode->tcp_cntxt.rcv_wnd;
   loopback_remotenode->tcp_cntxt.snd_wnd = cm_node->tcp_cntxt.rcv_wnd;
   cm_node->tcp_cntxt.snd_wscale = loopback_remotenode->tcp_cntxt.rcv_wscale;
   loopback_remotenode->tcp_cntxt.snd_wscale = cm_node->tcp_cntxt.rcv_wscale;
  }
  return cm_node;
 }

 cm_node->pdata.size = private_data_len;
 cm_node->pdata.addr = cm_node->pdata_buf;

 memcpy(cm_node->pdata_buf, private_data, private_data_len);

 cm_node->state = I40IW_CM_STATE_SYN_SENT;
 return cm_node;
}
