
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int local; } ;
struct hfi1_qp_priv {TYPE_1__ tid_rdma; } ;


 int tid_rdma_opfn_encode (int *) ;

bool tid_rdma_conn_req(struct rvt_qp *qp, u64 *data)
{
 struct hfi1_qp_priv *priv = qp->priv;

 *data = tid_rdma_opfn_encode(&priv->tid_rdma.local);
 return 1;
}
