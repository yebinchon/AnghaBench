
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int dummy; } ;
struct rvt_mcast_qp {struct rvt_qp* qp; } ;


 int kfree (struct rvt_mcast_qp*) ;
 int rvt_put_qp (struct rvt_qp*) ;

__attribute__((used)) static void rvt_mcast_qp_free(struct rvt_mcast_qp *mqp)
{
 struct rvt_qp *qp = mqp->qp;


 rvt_put_qp(qp);

 kfree(mqp);
}
