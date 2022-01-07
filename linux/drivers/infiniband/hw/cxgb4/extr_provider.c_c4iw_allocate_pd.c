
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uresp ;
typedef int u32 ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct c4iw_pd {int ibpd; int pdid; struct c4iw_dev* rhp; } ;
struct TYPE_6__ {scalar_t__ cur; scalar_t__ max; } ;
struct TYPE_7__ {int lock; TYPE_2__ pd; } ;
struct TYPE_5__ {int pdid_table; } ;
struct TYPE_8__ {TYPE_3__ stats; TYPE_1__ resource; } ;
struct c4iw_dev {TYPE_4__ rdev; } ;
struct c4iw_alloc_pd_resp {int pdid; } ;


 int EFAULT ;
 int EINVAL ;
 int c4iw_deallocate_pd (int *,struct ib_udata*) ;
 int c4iw_get_resource (int *) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,struct c4iw_alloc_pd_resp*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,...) ;
 struct c4iw_pd* to_c4iw_pd (struct ib_pd*) ;

__attribute__((used)) static int c4iw_allocate_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 struct c4iw_pd *php = to_c4iw_pd(pd);
 struct ib_device *ibdev = pd->device;
 u32 pdid;
 struct c4iw_dev *rhp;

 pr_debug("ibdev %p\n", ibdev);
 rhp = (struct c4iw_dev *) ibdev;
 pdid = c4iw_get_resource(&rhp->rdev.resource.pdid_table);
 if (!pdid)
  return -EINVAL;

 php->pdid = pdid;
 php->rhp = rhp;
 if (udata) {
  struct c4iw_alloc_pd_resp uresp = {.pdid = php->pdid};

  if (ib_copy_to_udata(udata, &uresp, sizeof(uresp))) {
   c4iw_deallocate_pd(&php->ibpd, udata);
   return -EFAULT;
  }
 }
 mutex_lock(&rhp->rdev.stats.lock);
 rhp->rdev.stats.pd.cur++;
 if (rhp->rdev.stats.pd.cur > rhp->rdev.stats.pd.max)
  rhp->rdev.stats.pd.max = rhp->rdev.stats.pd.cur;
 mutex_unlock(&rhp->rdev.stats.lock);
 pr_debug("pdid 0x%0x ptr 0x%p\n", pdid, php);
 return 0;
}
