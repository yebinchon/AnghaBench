
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rvt_pd {int user; } ;
struct TYPE_3__ {scalar_t__ max_pd; } ;
struct TYPE_4__ {TYPE_1__ props; } ;
struct rvt_dev_info {scalar_t__ n_pds_allocated; int n_pds_lock; TYPE_2__ dparms; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;
 struct rvt_pd* ibpd_to_rvtpd (struct ib_pd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int rvt_alloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct ib_device *ibdev = ibpd->device;
 struct rvt_dev_info *dev = ib_to_rvt(ibdev);
 struct rvt_pd *pd = ibpd_to_rvtpd(ibpd);
 int ret = 0;
 spin_lock(&dev->n_pds_lock);
 if (dev->n_pds_allocated == dev->dparms.props.max_pd) {
  spin_unlock(&dev->n_pds_lock);
  ret = -ENOMEM;
  goto bail;
 }

 dev->n_pds_allocated++;
 spin_unlock(&dev->n_pds_lock);


 pd->user = !!udata;

bail:
 return ret;
}
