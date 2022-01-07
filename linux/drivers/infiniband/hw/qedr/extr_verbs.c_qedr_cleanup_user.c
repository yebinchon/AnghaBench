
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * umem; } ;
struct TYPE_3__ {int * umem; } ;
struct qedr_qp {TYPE_2__ urq; TYPE_1__ usq; } ;
struct qedr_dev {int dummy; } ;


 int ib_umem_release (int *) ;

__attribute__((used)) static void qedr_cleanup_user(struct qedr_dev *dev, struct qedr_qp *qp)
{
 ib_umem_release(qp->usq.umem);
 qp->usq.umem = ((void*)0);

 ib_umem_release(qp->urq.umem);
 qp->urq.umem = ((void*)0);
}
