
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_qp {int refcnt; } ;
struct ib_qp {int dummy; } ;


 int atomic_inc (int *) ;
 struct qedr_qp* get_qedr_qp (struct ib_qp*) ;

void qedr_iw_qp_add_ref(struct ib_qp *ibqp)
{
 struct qedr_qp *qp = get_qedr_qp(ibqp);

 atomic_inc(&qp->refcnt);
}
