
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_pd {TYPE_2__* device; int res; int usecnt; int * __internal_mr; } ;
struct TYPE_3__ {int (* dereg_mr ) (int *,int *) ;int (* dealloc_pd ) (struct ib_pd*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int kfree (struct ib_pd*) ;
 int rdma_restrack_del (int *) ;
 int stub1 (int *,int *) ;
 int stub2 (struct ib_pd*,struct ib_udata*) ;

void ib_dealloc_pd_user(struct ib_pd *pd, struct ib_udata *udata)
{
 int ret;

 if (pd->__internal_mr) {
  ret = pd->device->ops.dereg_mr(pd->__internal_mr, ((void*)0));
  WARN_ON(ret);
  pd->__internal_mr = ((void*)0);
 }



 WARN_ON(atomic_read(&pd->usecnt));

 rdma_restrack_del(&pd->res);
 pd->device->ops.dealloc_pd(pd, udata);
 kfree(pd);
}
