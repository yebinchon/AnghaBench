
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qedr_dev {int ibdev; TYPE_2__* ndev; int rdma_ctx; TYPE_1__* ops; } ;
struct qed_rdma_port {scalar_t__ port_state; int max_msg_size; int link_speed; int pkey_bad_counter; } ;
struct ib_port_attr {int ip_gids; int gid_tbl_len; int pkey_tbl_len; int max_vl_num; int max_msg_sz; int active_width; int active_speed; scalar_t__ qkey_viol_cntr; int bad_pkey_cntr; scalar_t__ sm_sl; scalar_t__ sm_lid; scalar_t__ lmc; scalar_t__ lid; int active_mtu; int max_mtu; int phys_state; int state; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int mtu; } ;
struct TYPE_3__ {struct qed_rdma_port* (* rdma_query_port ) (int ) ;} ;


 int DP_ERR (struct qedr_dev*,char*) ;
 int EINVAL ;
 int IB_MTU_4096 ;
 int IB_PORT_ACTIVE ;
 int IB_PORT_DOWN ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int QEDR_MAX_SGID ;
 int QEDR_ROCE_PKEY_TABLE_LEN ;
 scalar_t__ QED_RDMA_PORT_UP ;
 int get_link_speed_and_width (int ,int *,int *) ;
 struct qedr_dev* get_qedr_dev (struct ib_device*) ;
 int iboe_get_mtu (int ) ;
 scalar_t__ rdma_protocol_iwarp (int *,int) ;
 struct qed_rdma_port* stub1 (int ) ;

int qedr_query_port(struct ib_device *ibdev, u8 port, struct ib_port_attr *attr)
{
 struct qedr_dev *dev;
 struct qed_rdma_port *rdma_port;

 dev = get_qedr_dev(ibdev);

 if (!dev->rdma_ctx) {
  DP_ERR(dev, "rdma_ctx is NULL\n");
  return -EINVAL;
 }

 rdma_port = dev->ops->rdma_query_port(dev->rdma_ctx);


 if (rdma_port->port_state == QED_RDMA_PORT_UP) {
  attr->state = IB_PORT_ACTIVE;
  attr->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
 } else {
  attr->state = IB_PORT_DOWN;
  attr->phys_state = IB_PORT_PHYS_STATE_DISABLED;
 }
 attr->max_mtu = IB_MTU_4096;
 attr->active_mtu = iboe_get_mtu(dev->ndev->mtu);
 attr->lid = 0;
 attr->lmc = 0;
 attr->sm_lid = 0;
 attr->sm_sl = 0;
 attr->ip_gids = 1;
 if (rdma_protocol_iwarp(&dev->ibdev, 1)) {
  attr->gid_tbl_len = 1;
  attr->pkey_tbl_len = 1;
 } else {
  attr->gid_tbl_len = QEDR_MAX_SGID;
  attr->pkey_tbl_len = QEDR_ROCE_PKEY_TABLE_LEN;
 }
 attr->bad_pkey_cntr = rdma_port->pkey_bad_counter;
 attr->qkey_viol_cntr = 0;
 get_link_speed_and_width(rdma_port->link_speed,
     &attr->active_speed, &attr->active_width);
 attr->max_msg_sz = rdma_port->max_msg_size;
 attr->max_vl_num = 4;

 return 0;
}
