
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct rvt_qp {TYPE_2__ ibqp; int port_num; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {TYPE_1__* s_sde; int s_iowait; } ;
struct hfi1_pportdata {int hfi1_wq; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {int node; } ;
struct TYPE_3__ {int cpu; } ;


 int cpumask_first (int ) ;
 int cpumask_of_node (int ) ;
 struct hfi1_devdata* dd_from_ibdev (int ) ;
 int iowait_schedule (int *,int ,int ) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 struct hfi1_ibport* to_iport (int ,int ) ;

bool _hfi1_schedule_send(struct rvt_qp *qp)
{
 struct hfi1_qp_priv *priv = qp->priv;
 struct hfi1_ibport *ibp =
  to_iport(qp->ibqp.device, qp->port_num);
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 struct hfi1_devdata *dd = dd_from_ibdev(qp->ibqp.device);

 return iowait_schedule(&priv->s_iowait, ppd->hfi1_wq,
          priv->s_sde ?
          priv->s_sde->cpu :
          cpumask_first(cpumask_of_node(dd->node)));
}
