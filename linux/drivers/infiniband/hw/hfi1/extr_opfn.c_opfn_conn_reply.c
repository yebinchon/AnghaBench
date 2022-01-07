
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {size_t curr; int lock; int completed; } ;
struct hfi1_qp_priv {TYPE_1__ opfn; } ;
struct hfi1_opfn_type {scalar_t__ (* reply ) (struct rvt_qp*,int) ;} ;


 int OPFN_CODE (size_t) ;
 size_t STL_VERBS_EXTD_MAX ;
 size_t STL_VERBS_EXTD_NONE ;
 struct hfi1_opfn_type* hfi1_opfn_handlers ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct rvt_qp*,int) ;
 int trace_hfi1_opfn_data_conn_reply (struct rvt_qp*,size_t,int) ;
 int trace_hfi1_opfn_state_conn_reply (struct rvt_qp*) ;

void opfn_conn_reply(struct rvt_qp *qp, u64 data)
{
 struct hfi1_qp_priv *priv = qp->priv;
 struct hfi1_opfn_type *extd;
 u8 capcode;
 unsigned long flags;

 trace_hfi1_opfn_state_conn_reply(qp);
 capcode = data & 0xf;
 trace_hfi1_opfn_data_conn_reply(qp, capcode, data);
 if (!capcode || capcode >= STL_VERBS_EXTD_MAX)
  return;

 spin_lock_irqsave(&priv->opfn.lock, flags);




 if (!priv->opfn.curr || capcode != priv->opfn.curr)
  goto done;

 extd = &hfi1_opfn_handlers[capcode];

 if (!extd || !extd->reply)
  goto clear;

 if (extd->reply(qp, data))
  priv->opfn.completed |= OPFN_CODE(capcode);
clear:




 priv->opfn.curr = STL_VERBS_EXTD_NONE;
 trace_hfi1_opfn_state_conn_reply(qp);
done:
 spin_unlock_irqrestore(&priv->opfn.lock, flags);
}
