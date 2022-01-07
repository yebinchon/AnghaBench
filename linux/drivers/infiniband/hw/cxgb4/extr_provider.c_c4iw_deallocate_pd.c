
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct c4iw_pd {int pdid; struct c4iw_dev* rhp; } ;
struct TYPE_6__ {int cur; } ;
struct TYPE_7__ {int lock; TYPE_2__ pd; } ;
struct TYPE_5__ {int pdid_table; } ;
struct TYPE_8__ {TYPE_3__ stats; TYPE_1__ resource; } ;
struct c4iw_dev {TYPE_4__ rdev; } ;


 int c4iw_put_resource (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,struct ib_pd*,int ) ;
 struct c4iw_pd* to_c4iw_pd (struct ib_pd*) ;

__attribute__((used)) static void c4iw_deallocate_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 struct c4iw_dev *rhp;
 struct c4iw_pd *php;

 php = to_c4iw_pd(pd);
 rhp = php->rhp;
 pr_debug("ibpd %p pdid 0x%x\n", pd, php->pdid);
 c4iw_put_resource(&rhp->rdev.resource.pdid_table, php->pdid);
 mutex_lock(&rhp->rdev.stats.lock);
 rhp->rdev.stats.pd.cur--;
 mutex_unlock(&rhp->rdev.stats.lock);
}
