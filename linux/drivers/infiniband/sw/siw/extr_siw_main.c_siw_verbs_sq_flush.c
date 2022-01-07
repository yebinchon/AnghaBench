
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_qp {int state_lock; } ;
struct ib_qp {int dummy; } ;


 int down_write (int *) ;
 int siw_sq_flush (struct siw_qp*) ;
 struct siw_qp* to_siw_qp (struct ib_qp*) ;
 int up_write (int *) ;

__attribute__((used)) static void siw_verbs_sq_flush(struct ib_qp *base_qp)
{
 struct siw_qp *qp = to_siw_qp(base_qp);

 down_write(&qp->state_lock);
 siw_sq_flush(qp);
 up_write(&qp->state_lock);
}
