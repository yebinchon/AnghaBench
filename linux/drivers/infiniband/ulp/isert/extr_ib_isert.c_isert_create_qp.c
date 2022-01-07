
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdma_cm_id {struct ib_qp* qp; } ;
struct isert_device {int pd; scalar_t__ pi_capable; TYPE_2__* ib_device; } ;
struct isert_conn {struct isert_device* device; } ;
struct isert_comp {int cq; } ;
struct TYPE_6__ {int max_recv_sge; int max_send_sge; int max_rdma_ctxs; scalar_t__ max_recv_wr; scalar_t__ max_send_wr; } ;
struct ib_qp_init_attr {int create_flags; int qp_type; int sq_sig_type; TYPE_3__ cap; int recv_cq; int send_cq; struct isert_conn* qp_context; int event_handler; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {int max_send_sge; } ;
struct TYPE_5__ {TYPE_1__ attrs; } ;


 struct ib_qp* ERR_PTR (int) ;
 int IB_QPT_RC ;
 int IB_QP_CREATE_INTEGRITY_EN ;
 int IB_SIGNAL_REQ_WR ;
 int ISCSI_DEF_XMIT_CMDS_MAX ;
 scalar_t__ ISERT_QP_MAX_RECV_DTOS ;
 scalar_t__ ISERT_QP_MAX_REQ_DTOS ;
 int isert_err (char*,int) ;
 int isert_qp_event_callback ;
 int memset (struct ib_qp_init_attr*,int ,int) ;
 int rdma_create_qp (struct rdma_cm_id*,int ,struct ib_qp_init_attr*) ;

__attribute__((used)) static struct ib_qp *
isert_create_qp(struct isert_conn *isert_conn,
  struct isert_comp *comp,
  struct rdma_cm_id *cma_id)
{
 struct isert_device *device = isert_conn->device;
 struct ib_qp_init_attr attr;
 int ret;

 memset(&attr, 0, sizeof(struct ib_qp_init_attr));
 attr.event_handler = isert_qp_event_callback;
 attr.qp_context = isert_conn;
 attr.send_cq = comp->cq;
 attr.recv_cq = comp->cq;
 attr.cap.max_send_wr = ISERT_QP_MAX_REQ_DTOS + 1;
 attr.cap.max_recv_wr = ISERT_QP_MAX_RECV_DTOS + 1;
 attr.cap.max_rdma_ctxs = ISCSI_DEF_XMIT_CMDS_MAX;
 attr.cap.max_send_sge = device->ib_device->attrs.max_send_sge;
 attr.cap.max_recv_sge = 1;
 attr.sq_sig_type = IB_SIGNAL_REQ_WR;
 attr.qp_type = IB_QPT_RC;
 if (device->pi_capable)
  attr.create_flags |= IB_QP_CREATE_INTEGRITY_EN;

 ret = rdma_create_qp(cma_id, device->pd, &attr);
 if (ret) {
  isert_err("rdma_create_qp failed for cma_id %d\n", ret);
  return ERR_PTR(ret);
 }

 return cma_id->qp;
}
