
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_pd {int usecnt; TYPE_2__* device; } ;
struct ib_fmr_attr {int dummy; } ;
struct ib_fmr {struct ib_pd* pd; TYPE_2__* device; } ;
struct TYPE_3__ {struct ib_fmr* (* alloc_fmr ) (struct ib_pd*,int,struct ib_fmr_attr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 struct ib_fmr* ERR_PTR (int ) ;
 int IS_ERR (struct ib_fmr*) ;
 int atomic_inc (int *) ;
 struct ib_fmr* stub1 (struct ib_pd*,int,struct ib_fmr_attr*) ;

struct ib_fmr *ib_alloc_fmr(struct ib_pd *pd,
       int mr_access_flags,
       struct ib_fmr_attr *fmr_attr)
{
 struct ib_fmr *fmr;

 if (!pd->device->ops.alloc_fmr)
  return ERR_PTR(-EOPNOTSUPP);

 fmr = pd->device->ops.alloc_fmr(pd, mr_access_flags, fmr_attr);
 if (!IS_ERR(fmr)) {
  fmr->device = pd->device;
  fmr->pd = pd;
  atomic_inc(&pd->usecnt);
 }

 return fmr;
}
