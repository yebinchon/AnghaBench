
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct TYPE_13__ {int max_send_sge; scalar_t__ max_rdma_ctxs; scalar_t__ max_recv_sge; scalar_t__ max_recv_wr; } ;
struct ib_qp_init_attr {int create_flags; scalar_t__ qp_type; TYPE_6__ cap; TYPE_5__* rwq_ind_tbl; TYPE_4__* send_cq; TYPE_3__* srq; TYPE_2__* recv_cq; int qp_context; int event_handler; TYPE_1__* xrcd; } ;
struct ib_qp {scalar_t__ qp_type; int integrity_en; int max_read_sge; int max_write_sge; TYPE_5__* rwq_ind_tbl; int * xrcd; TYPE_4__* send_cq; TYPE_3__* srq; TYPE_2__* recv_cq; int qp_context; int event_handler; scalar_t__ port; int sig_mrs; int rdma_mrs; int mr_lock; scalar_t__ mrs_used; int usecnt; } ;
struct ib_pd {int usecnt; struct ib_device* device; } ;
struct TYPE_14__ {int device_cap_flags; int max_sge_rd; } ;
struct ib_device {TYPE_7__ attrs; } ;
struct TYPE_12__ {int usecnt; } ;
struct TYPE_11__ {int usecnt; } ;
struct TYPE_10__ {int usecnt; } ;
struct TYPE_9__ {int usecnt; } ;
struct TYPE_8__ {struct ib_device* device; } ;


 int EINVAL ;
 struct ib_qp* ERR_PTR (int) ;
 int IB_DEVICE_INTEGRITY_HANDOVER ;
 scalar_t__ IB_QPT_XRC_INI ;
 scalar_t__ IB_QPT_XRC_TGT ;
 int IB_QP_CREATE_INTEGRITY_EN ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct ib_qp*) ;
 int PTR_ERR (struct ib_qp*) ;
 struct ib_qp* _ib_create_qp (struct ib_device*,struct ib_pd*,struct ib_qp_init_attr*,int *,int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ib_qp* create_xrc_qp_user (struct ib_qp*,struct ib_qp_init_attr*,struct ib_udata*) ;
 int ib_create_qp_security (struct ib_qp*,struct ib_device*) ;
 int ib_destroy_qp (struct ib_qp*) ;
 int min_t (int ,int ,int ) ;
 int rdma_rw_init_mrs (struct ib_qp*,struct ib_qp_init_attr*) ;
 int rdma_rw_init_qp (struct ib_device*,struct ib_qp_init_attr*) ;
 int spin_lock_init (int *) ;
 int u32 ;

struct ib_qp *ib_create_qp_user(struct ib_pd *pd,
    struct ib_qp_init_attr *qp_init_attr,
    struct ib_udata *udata)
{
 struct ib_device *device = pd ? pd->device : qp_init_attr->xrcd->device;
 struct ib_qp *qp;
 int ret;

 if (qp_init_attr->rwq_ind_tbl &&
     (qp_init_attr->recv_cq ||
     qp_init_attr->srq || qp_init_attr->cap.max_recv_wr ||
     qp_init_attr->cap.max_recv_sge))
  return ERR_PTR(-EINVAL);

 if ((qp_init_attr->create_flags & IB_QP_CREATE_INTEGRITY_EN) &&
     !(device->attrs.device_cap_flags & IB_DEVICE_INTEGRITY_HANDOVER))
  return ERR_PTR(-EINVAL);







 if (qp_init_attr->cap.max_rdma_ctxs)
  rdma_rw_init_qp(device, qp_init_attr);

 qp = _ib_create_qp(device, pd, qp_init_attr, ((void*)0), ((void*)0));
 if (IS_ERR(qp))
  return qp;

 ret = ib_create_qp_security(qp, device);
 if (ret)
  goto err;

 qp->qp_type = qp_init_attr->qp_type;
 qp->rwq_ind_tbl = qp_init_attr->rwq_ind_tbl;

 atomic_set(&qp->usecnt, 0);
 qp->mrs_used = 0;
 spin_lock_init(&qp->mr_lock);
 INIT_LIST_HEAD(&qp->rdma_mrs);
 INIT_LIST_HEAD(&qp->sig_mrs);
 qp->port = 0;

 if (qp_init_attr->qp_type == IB_QPT_XRC_TGT) {
  struct ib_qp *xrc_qp =
   create_xrc_qp_user(qp, qp_init_attr, udata);

  if (IS_ERR(xrc_qp)) {
   ret = PTR_ERR(xrc_qp);
   goto err;
  }
  return xrc_qp;
 }

 qp->event_handler = qp_init_attr->event_handler;
 qp->qp_context = qp_init_attr->qp_context;
 if (qp_init_attr->qp_type == IB_QPT_XRC_INI) {
  qp->recv_cq = ((void*)0);
  qp->srq = ((void*)0);
 } else {
  qp->recv_cq = qp_init_attr->recv_cq;
  if (qp_init_attr->recv_cq)
   atomic_inc(&qp_init_attr->recv_cq->usecnt);
  qp->srq = qp_init_attr->srq;
  if (qp->srq)
   atomic_inc(&qp_init_attr->srq->usecnt);
 }

 qp->send_cq = qp_init_attr->send_cq;
 qp->xrcd = ((void*)0);

 atomic_inc(&pd->usecnt);
 if (qp_init_attr->send_cq)
  atomic_inc(&qp_init_attr->send_cq->usecnt);
 if (qp_init_attr->rwq_ind_tbl)
  atomic_inc(&qp->rwq_ind_tbl->usecnt);

 if (qp_init_attr->cap.max_rdma_ctxs) {
  ret = rdma_rw_init_mrs(qp, qp_init_attr);
  if (ret)
   goto err;
 }






 qp->max_write_sge = qp_init_attr->cap.max_send_sge;
 qp->max_read_sge = min_t(u32, qp_init_attr->cap.max_send_sge,
     device->attrs.max_sge_rd);
 if (qp_init_attr->create_flags & IB_QP_CREATE_INTEGRITY_EN)
  qp->integrity_en = 1;

 return qp;

err:
 ib_destroy_qp(qp);
 return ERR_PTR(ret);

}
