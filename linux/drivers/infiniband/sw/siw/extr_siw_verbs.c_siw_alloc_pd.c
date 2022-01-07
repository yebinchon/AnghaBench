
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_device {int num_pd; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;


 int ENOMEM ;
 scalar_t__ SIW_MAX_PD ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int siw_dbg_pd (struct ib_pd*,char*,int ) ;
 struct siw_device* to_siw_dev (int ) ;

int siw_alloc_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 struct siw_device *sdev = to_siw_dev(pd->device);

 if (atomic_inc_return(&sdev->num_pd) > SIW_MAX_PD) {
  atomic_dec(&sdev->num_pd);
  return -ENOMEM;
 }
 siw_dbg_pd(pd, "now %d PD's(s)\n", atomic_read(&sdev->num_pd));

 return 0;
}
