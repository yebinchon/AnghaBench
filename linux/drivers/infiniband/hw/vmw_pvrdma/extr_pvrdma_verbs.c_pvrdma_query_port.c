
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int phys_state; int active_speed; int active_width; int init_type_reply; int subnet_timeout; int sm_sl; int max_vl_num; int lmc; int sm_lid; int lid; int pkey_tbl_len; int qkey_viol_cntr; int bad_pkey_cntr; int max_msg_sz; int port_cap_flags; int gid_tbl_len; int active_mtu; int max_mtu; int state; } ;
struct pvrdma_cmd_query_port_resp {TYPE_3__ attrs; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_query_port_resp query_port_resp; } ;
struct TYPE_4__ {int cmd; } ;
struct pvrdma_cmd_query_port {int port_num; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_query_port query_port; } ;
typedef int u8 ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_port_attr {int ip_gids; int phys_state; int active_speed; int active_width; int init_type_reply; int subnet_timeout; int sm_sl; int max_vl_num; int lmc; int sm_lid; int lid; int pkey_tbl_len; int qkey_viol_cntr; int bad_pkey_cntr; int max_msg_sz; int port_cap_flags; int gid_tbl_len; void* active_mtu; void* max_mtu; int state; } ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {int dev; } ;


 int IB_PORT_CM_SUP ;
 int PVRDMA_CMD_QUERY_PORT ;
 int PVRDMA_CMD_QUERY_PORT_RESP ;
 int dev_warn (int *,char*,int) ;
 int memset (struct pvrdma_cmd_query_port*,int ,int) ;
 int pvrdma_cmd_post (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int ) ;
 void* pvrdma_mtu_to_ib (int ) ;
 int pvrdma_port_cap_flags_to_ib (int ) ;
 int pvrdma_port_speed_to_ib (int ) ;
 int pvrdma_port_state_to_ib (int ) ;
 int pvrdma_port_width_to_ib (int ) ;
 struct pvrdma_dev* to_vdev (struct ib_device*) ;

int pvrdma_query_port(struct ib_device *ibdev, u8 port,
        struct ib_port_attr *props)
{
 struct pvrdma_dev *dev = to_vdev(ibdev);
 union pvrdma_cmd_req req;
 union pvrdma_cmd_resp rsp;
 struct pvrdma_cmd_query_port *cmd = &req.query_port;
 struct pvrdma_cmd_query_port_resp *resp = &rsp.query_port_resp;
 int err;

 memset(cmd, 0, sizeof(*cmd));
 cmd->hdr.cmd = PVRDMA_CMD_QUERY_PORT;
 cmd->port_num = port;

 err = pvrdma_cmd_post(dev, &req, &rsp, PVRDMA_CMD_QUERY_PORT_RESP);
 if (err < 0) {
  dev_warn(&dev->pdev->dev,
    "could not query port, error: %d\n", err);
  return err;
 }



 props->state = pvrdma_port_state_to_ib(resp->attrs.state);
 props->max_mtu = pvrdma_mtu_to_ib(resp->attrs.max_mtu);
 props->active_mtu = pvrdma_mtu_to_ib(resp->attrs.active_mtu);
 props->gid_tbl_len = resp->attrs.gid_tbl_len;
 props->port_cap_flags =
  pvrdma_port_cap_flags_to_ib(resp->attrs.port_cap_flags);
 props->port_cap_flags |= IB_PORT_CM_SUP;
 props->ip_gids = 1;
 props->max_msg_sz = resp->attrs.max_msg_sz;
 props->bad_pkey_cntr = resp->attrs.bad_pkey_cntr;
 props->qkey_viol_cntr = resp->attrs.qkey_viol_cntr;
 props->pkey_tbl_len = resp->attrs.pkey_tbl_len;
 props->lid = resp->attrs.lid;
 props->sm_lid = resp->attrs.sm_lid;
 props->lmc = resp->attrs.lmc;
 props->max_vl_num = resp->attrs.max_vl_num;
 props->sm_sl = resp->attrs.sm_sl;
 props->subnet_timeout = resp->attrs.subnet_timeout;
 props->init_type_reply = resp->attrs.init_type_reply;
 props->active_width = pvrdma_port_width_to_ib(resp->attrs.active_width);
 props->active_speed = pvrdma_port_speed_to_ib(resp->attrs.active_speed);
 props->phys_state = resp->attrs.phys_state;

 return 0;
}
