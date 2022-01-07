
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_dev_info {int n_pds_lock; int n_pds_allocated; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;


 struct rvt_dev_info* ib_to_rvt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rvt_dealloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct rvt_dev_info *dev = ib_to_rvt(ibpd->device);

 spin_lock(&dev->n_pds_lock);
 dev->n_pds_allocated--;
 spin_unlock(&dev->n_pds_lock);
}
