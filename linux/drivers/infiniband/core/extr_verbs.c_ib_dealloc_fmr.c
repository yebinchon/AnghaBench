
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_pd {int usecnt; } ;
struct ib_fmr {TYPE_2__* device; struct ib_pd* pd; } ;
struct TYPE_3__ {int (* dealloc_fmr ) (struct ib_fmr*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int atomic_dec (int *) ;
 int stub1 (struct ib_fmr*) ;

int ib_dealloc_fmr(struct ib_fmr *fmr)
{
 struct ib_pd *pd;
 int ret;

 pd = fmr->pd;
 ret = fmr->device->ops.dealloc_fmr(fmr);
 if (!ret)
  atomic_dec(&pd->usecnt);

 return ret;
}
