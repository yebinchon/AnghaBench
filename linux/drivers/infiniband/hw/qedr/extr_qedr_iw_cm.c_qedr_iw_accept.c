
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_qp {int qed_qp; struct qedr_iw_ep* ep; } ;
struct qedr_iw_ep {int during_connect; struct qedr_qp* qp; int qed_context; struct iw_cm_id* cm_id; struct qedr_dev* dev; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; int qps; } ;
struct qed_iwarp_accept_in {int ord; int ird; int private_data_len; int private_data; int qp; struct qedr_iw_ep* cb_context; int ep_context; } ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;int (* add_ref ) (struct iw_cm_id*) ;scalar_t__ provider_data; } ;
struct iw_cm_conn_param {int ord; int ird; int private_data_len; int private_data; int qpn; } ;
struct TYPE_2__ {int (* iwarp_accept ) (int ,struct qed_iwarp_accept_in*) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int ) ;
 int DP_ERR (struct qedr_dev*,char*,int ) ;
 int EINVAL ;
 int QEDR_MSG_IWARP ;
 int stub1 (struct iw_cm_id*) ;
 int stub2 (int ,struct qed_iwarp_accept_in*) ;
 int stub3 (struct iw_cm_id*) ;
 struct qedr_qp* xa_load (int *,int ) ;

int qedr_iw_accept(struct iw_cm_id *cm_id, struct iw_cm_conn_param *conn_param)
{
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)cm_id->provider_data;
 struct qedr_dev *dev = ep->dev;
 struct qedr_qp *qp;
 struct qed_iwarp_accept_in params;
 int rc;

 DP_DEBUG(dev, QEDR_MSG_IWARP, "Accept on qpid=%d\n", conn_param->qpn);

 qp = xa_load(&dev->qps, conn_param->qpn);
 if (!qp) {
  DP_ERR(dev, "Invalid QP number %d\n", conn_param->qpn);
  return -EINVAL;
 }

 ep->qp = qp;
 qp->ep = ep;
 cm_id->add_ref(cm_id);
 ep->cm_id = cm_id;

 params.ep_context = ep->qed_context;
 params.cb_context = ep;
 params.qp = ep->qp->qed_qp;
 params.private_data = conn_param->private_data;
 params.private_data_len = conn_param->private_data_len;
 params.ird = conn_param->ird;
 params.ord = conn_param->ord;

 ep->during_connect = 1;
 rc = dev->ops->iwarp_accept(dev->rdma_ctx, &params);
 if (rc)
  goto err;

 return rc;
err:
 ep->during_connect = 0;
 cm_id->rem_ref(cm_id);
 return rc;
}
