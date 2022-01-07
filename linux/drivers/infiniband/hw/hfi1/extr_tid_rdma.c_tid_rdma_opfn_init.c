
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_rdma_params {int qp; int urg; int timeout; int max_write; int max_read; int jkey; int max_len; } ;
struct rvt_qp {int timeout; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {TYPE_1__* rcd; } ;
struct TYPE_2__ {int ctxt; int jkey; } ;


 int TID_RDMA_MAX_READ_SEGS_PER_REQ ;
 int TID_RDMA_MAX_SEGMENT_SIZE ;
 int TID_RDMA_MAX_WRITE_SEGS_PER_REQ ;
 int is_urg_masked (TYPE_1__*) ;
 int kdeth_qp ;

void tid_rdma_opfn_init(struct rvt_qp *qp, struct tid_rdma_params *p)
{
 struct hfi1_qp_priv *priv = qp->priv;

 p->qp = (kdeth_qp << 16) | priv->rcd->ctxt;
 p->max_len = TID_RDMA_MAX_SEGMENT_SIZE;
 p->jkey = priv->rcd->jkey;
 p->max_read = TID_RDMA_MAX_READ_SEGS_PER_REQ;
 p->max_write = TID_RDMA_MAX_WRITE_SEGS_PER_REQ;
 p->timeout = qp->timeout;
 p->urg = is_urg_masked(priv->rcd);
}
