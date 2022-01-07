
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rvt_qp {scalar_t__ state; struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int extended; } ;
struct hfi1_qp_priv {TYPE_1__ opfn; } ;


 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 scalar_t__ IB_QPS_RTS ;
 int OPFN ;
 scalar_t__ hfi1_opfn_extended (int ) ;
 int opfn_conn_request (struct rvt_qp*) ;

void opfn_trigger_conn_request(struct rvt_qp *qp, u32 bth1)
{
 struct hfi1_qp_priv *priv = qp->priv;

 if (!priv->opfn.extended && hfi1_opfn_extended(bth1) &&
     HFI1_CAP_IS_KSET(OPFN)) {
  priv->opfn.extended = 1;
  if (qp->state == IB_QPS_RTS)
   opfn_conn_request(qp);
 }
}
