
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct rvt_qp {struct qib_qp_priv* priv; int port_num; TYPE_1__ ibqp; } ;
struct qib_qp_priv {int s_work; } ;
struct qib_pportdata {int qib_wq; } ;
struct qib_ibport {int dummy; } ;


 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int queue_work (int ,int *) ;
 struct qib_ibport* to_iport (int ,int ) ;

bool _qib_schedule_send(struct rvt_qp *qp)
{
 struct qib_ibport *ibp =
  to_iport(qp->ibqp.device, qp->port_num);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct qib_qp_priv *priv = qp->priv;

 return queue_work(ppd->qib_wq, &priv->s_work);
}
