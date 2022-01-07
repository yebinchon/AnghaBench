
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ pd; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct rvt_mregion {scalar_t__ pd; int lkey; } ;


 int rvt_qp_mr_clean (struct rvt_qp*,int ) ;

__attribute__((used)) static void rvt_dereg_clean_qp_cb(struct rvt_qp *qp, u64 v)
{
 struct rvt_mregion *mr = (struct rvt_mregion *)v;


 if (mr->pd != qp->ibqp.pd)
  return;
 rvt_qp_mr_clean(qp, mr->lkey);
}
