
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int opfn_work; } ;
struct hfi1_qp_priv {TYPE_1__ opfn; } ;


 int opfn_wq ;
 int queue_work (int ,int *) ;
 int trace_hfi1_opfn_state_sched_conn_request (struct rvt_qp*) ;

__attribute__((used)) static void opfn_schedule_conn_request(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;

 trace_hfi1_opfn_state_sched_conn_request(qp);
 queue_work(opfn_wq, &priv->opfn.opfn_work);
}
