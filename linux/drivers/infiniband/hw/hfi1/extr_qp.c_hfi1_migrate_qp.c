
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rvt_qp {TYPE_2__ ibqp; int remote_ah_attr; int s_flags; int s_alt_pkey_index; int s_pkey_index; int alt_ah_attr; int port_num; int s_mig_state; struct hfi1_qp_priv* priv; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
struct hfi1_qp_priv {int s_sc; int s_sde; } ;


 int HFI1_S_AHG_CLEAR ;
 int IB_EVENT_PATH_MIG ;
 int IB_MIG_MIGRATED ;
 int ah_to_sc (int ,int *) ;
 int qp_set_16b (struct rvt_qp*) ;
 int qp_to_sdma_engine (struct rvt_qp*,int ) ;
 int rdma_ah_get_port_num (int *) ;
 int stub1 (struct ib_event*,int ) ;

void hfi1_migrate_qp(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;
 struct ib_event ev;

 qp->s_mig_state = IB_MIG_MIGRATED;
 qp->remote_ah_attr = qp->alt_ah_attr;
 qp->port_num = rdma_ah_get_port_num(&qp->alt_ah_attr);
 qp->s_pkey_index = qp->s_alt_pkey_index;
 qp->s_flags |= HFI1_S_AHG_CLEAR;
 priv->s_sc = ah_to_sc(qp->ibqp.device, &qp->remote_ah_attr);
 priv->s_sde = qp_to_sdma_engine(qp, priv->s_sc);
 qp_set_16b(qp);

 ev.device = qp->ibqp.device;
 ev.element.qp = &qp->ibqp;
 ev.event = IB_EVENT_PATH_MIG;
 qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
}
