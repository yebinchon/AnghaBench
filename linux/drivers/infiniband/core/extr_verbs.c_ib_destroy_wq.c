
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_wq {TYPE_2__* device; int usecnt; struct ib_pd* pd; struct ib_cq* cq; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int usecnt; } ;
struct ib_cq {int usecnt; } ;
struct TYPE_3__ {int (* destroy_wq ) (struct ib_wq*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EBUSY ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_wq*,struct ib_udata*) ;

int ib_destroy_wq(struct ib_wq *wq, struct ib_udata *udata)
{
 struct ib_cq *cq = wq->cq;
 struct ib_pd *pd = wq->pd;

 if (atomic_read(&wq->usecnt))
  return -EBUSY;

 wq->device->ops.destroy_wq(wq, udata);
 atomic_dec(&pd->usecnt);
 atomic_dec(&cq->usecnt);

 return 0;
}
