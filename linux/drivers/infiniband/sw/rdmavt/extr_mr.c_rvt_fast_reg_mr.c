
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ pd; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct TYPE_4__ {scalar_t__ pd; int lkey; int access_flags; int lkey_invalid; int iova; } ;
struct rvt_mr {TYPE_2__ mr; scalar_t__ umem; } ;
struct ib_mr {int lkey; int rkey; int iova; } ;


 int EACCES ;
 int EINVAL ;
 int atomic_set (int *,int ) ;
 struct rvt_mr* to_imr (struct ib_mr*) ;

int rvt_fast_reg_mr(struct rvt_qp *qp, struct ib_mr *ibmr, u32 key,
      int access)
{
 struct rvt_mr *mr = to_imr(ibmr);

 if (qp->ibqp.pd != mr->mr.pd)
  return -EACCES;


 if (!mr->mr.lkey || mr->umem)
  return -EINVAL;

 if ((key & 0xFFFFFF00) != (mr->mr.lkey & 0xFFFFFF00))
  return -EINVAL;

 ibmr->lkey = key;
 ibmr->rkey = key;
 mr->mr.lkey = key;
 mr->mr.access_flags = access;
 mr->mr.iova = ibmr->iova;
 atomic_set(&mr->mr.lkey_invalid, 0);

 return 0;
}
