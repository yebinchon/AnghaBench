
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_device {int num_pd; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;


 int atomic_dec (int *) ;
 int siw_dbg_pd (struct ib_pd*,char*) ;
 struct siw_device* to_siw_dev (int ) ;

void siw_dealloc_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 struct siw_device *sdev = to_siw_dev(pd->device);

 siw_dbg_pd(pd, "free PD\n");
 atomic_dec(&sdev->num_pd);
}
