
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_qp {int qp_id; TYPE_1__* dev; int refcnt; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {int qps; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 struct qedr_qp* get_qedr_qp (struct ib_qp*) ;
 int kfree (struct qedr_qp*) ;
 int xa_erase_irq (int *,int ) ;

void qedr_iw_qp_rem_ref(struct ib_qp *ibqp)
{
 struct qedr_qp *qp = get_qedr_qp(ibqp);

 if (atomic_dec_and_test(&qp->refcnt)) {
  xa_erase_irq(&qp->dev->qps, qp->qp_id);
  kfree(qp);
 }
}
