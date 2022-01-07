
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pbl; } ;
struct TYPE_6__ {int pbl; } ;
struct qedr_qp {int rqe_wr_id; TYPE_1__ rq; int wqe_wr_id; TYPE_2__ sq; } ;
struct qedr_dev {int cdev; TYPE_4__* ops; } ;
struct TYPE_8__ {TYPE_3__* common; } ;
struct TYPE_7__ {int (* chain_free ) (int ,int *) ;} ;


 int kfree (int ) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static void qedr_cleanup_kernel(struct qedr_dev *dev, struct qedr_qp *qp)
{
 dev->ops->common->chain_free(dev->cdev, &qp->sq.pbl);
 kfree(qp->wqe_wr_id);

 dev->ops->common->chain_free(dev->cdev, &qp->rq.pbl);
 kfree(qp->rqe_wr_id);
}
