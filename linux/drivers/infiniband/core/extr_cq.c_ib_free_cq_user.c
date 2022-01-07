
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_cq {int poll_ctx; struct ib_cq* wc; struct ib_cq* dim; int work; TYPE_2__* device; int res; int iop; int usecnt; } ;
struct TYPE_3__ {int (* destroy_cq ) (struct ib_cq*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;






 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_read (int *) ;
 int cancel_work_sync (int *) ;
 int irq_poll_disable (int *) ;
 int kfree (struct ib_cq*) ;
 int rdma_restrack_del (int *) ;
 int stub1 (struct ib_cq*,struct ib_udata*) ;

void ib_free_cq_user(struct ib_cq *cq, struct ib_udata *udata)
{
 if (WARN_ON_ONCE(atomic_read(&cq->usecnt)))
  return;

 switch (cq->poll_ctx) {
 case 131:
  break;
 case 130:
  irq_poll_disable(&cq->iop);
  break;
 case 128:
 case 129:
  cancel_work_sync(&cq->work);
  break;
 default:
  WARN_ON_ONCE(1);
 }

 rdma_restrack_del(&cq->res);
 cq->device->ops.destroy_cq(cq, udata);
 if (cq->dim)
  cancel_work_sync(&cq->dim->work);
 kfree(cq->dim);
 kfree(cq->wc);
 kfree(cq);
}
