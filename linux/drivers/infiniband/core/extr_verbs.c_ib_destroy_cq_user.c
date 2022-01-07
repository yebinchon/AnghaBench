
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_cq {TYPE_2__* device; int res; int usecnt; } ;
struct TYPE_3__ {int (* destroy_cq ) (struct ib_cq*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct ib_cq*) ;
 int rdma_restrack_del (int *) ;
 int stub1 (struct ib_cq*,struct ib_udata*) ;

int ib_destroy_cq_user(struct ib_cq *cq, struct ib_udata *udata)
{
 if (atomic_read(&cq->usecnt))
  return -EBUSY;

 rdma_restrack_del(&cq->res);
 cq->device->ops.destroy_cq(cq, udata);
 kfree(cq);
 return 0;
}
