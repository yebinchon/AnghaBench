
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_pd {int usecnt; } ;
struct ib_mw {TYPE_2__* device; struct ib_pd* pd; } ;
struct TYPE_3__ {int (* dealloc_mw ) (struct ib_mw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int atomic_dec (int *) ;
 int stub1 (struct ib_mw*) ;

int uverbs_dealloc_mw(struct ib_mw *mw)
{
 struct ib_pd *pd = mw->pd;
 int ret;

 ret = mw->device->ops.dealloc_mw(mw);
 if (!ret)
  atomic_dec(&pd->usecnt);
 return ret;
}
