
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int device; } ;
struct rvt_qp {scalar_t__ s_mig_state; int remote_ah_attr; int s_flags; struct hfi1_qp_priv* priv; struct ib_qp ibqp; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {scalar_t__ path_mig_state; } ;
struct hfi1_qp_priv {void* s_sc; void* s_sendcontext; void* s_sde; } ;


 int HFI1_S_AHG_CLEAR ;
 scalar_t__ IB_MIG_ARMED ;
 scalar_t__ IB_MIG_MIGRATED ;
 int IB_QP_AV ;
 int IB_QP_PATH_MIG_STATE ;
 void* ah_to_sc (int ,int *) ;
 int opfn_qp_init (struct rvt_qp*,struct ib_qp_attr*,int) ;
 int qp_set_16b (struct rvt_qp*) ;
 void* qp_to_sdma_engine (struct rvt_qp*,void*) ;
 void* qp_to_send_context (struct rvt_qp*,void*) ;

void hfi1_modify_qp(struct rvt_qp *qp, struct ib_qp_attr *attr,
      int attr_mask, struct ib_udata *udata)
{
 struct ib_qp *ibqp = &qp->ibqp;
 struct hfi1_qp_priv *priv = qp->priv;

 if (attr_mask & IB_QP_AV) {
  priv->s_sc = ah_to_sc(ibqp->device, &qp->remote_ah_attr);
  priv->s_sde = qp_to_sdma_engine(qp, priv->s_sc);
  priv->s_sendcontext = qp_to_send_context(qp, priv->s_sc);
  qp_set_16b(qp);
 }

 if (attr_mask & IB_QP_PATH_MIG_STATE &&
     attr->path_mig_state == IB_MIG_MIGRATED &&
     qp->s_mig_state == IB_MIG_ARMED) {
  qp->s_flags |= HFI1_S_AHG_CLEAR;
  priv->s_sc = ah_to_sc(ibqp->device, &qp->remote_ah_attr);
  priv->s_sde = qp_to_sdma_engine(qp, priv->s_sc);
  priv->s_sendcontext = qp_to_send_context(qp, priv->s_sc);
  qp_set_16b(qp);
 }

 opfn_qp_init(qp, attr, attr_mask);
}
