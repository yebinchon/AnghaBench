
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_sig_attrs {int dummy; } ;
struct ib_pd {int usecnt; } ;
struct ib_mr {TYPE_2__* device; int res; struct ib_sig_attrs* sig_attrs; struct ib_dm* dm; struct ib_pd* pd; } ;
struct ib_dm {int usecnt; } ;
struct TYPE_3__ {int (* dereg_mr ) (struct ib_mr*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int atomic_dec (int *) ;
 int kfree (struct ib_sig_attrs*) ;
 int rdma_restrack_del (int *) ;
 int stub1 (struct ib_mr*,struct ib_udata*) ;

int ib_dereg_mr_user(struct ib_mr *mr, struct ib_udata *udata)
{
 struct ib_pd *pd = mr->pd;
 struct ib_dm *dm = mr->dm;
 struct ib_sig_attrs *sig_attrs = mr->sig_attrs;
 int ret;

 rdma_restrack_del(&mr->res);
 ret = mr->device->ops.dereg_mr(mr, udata);
 if (!ret) {
  atomic_dec(&pd->usecnt);
  if (dm)
   atomic_dec(&dm->usecnt);
  kfree(sig_attrs);
 }

 return ret;
}
