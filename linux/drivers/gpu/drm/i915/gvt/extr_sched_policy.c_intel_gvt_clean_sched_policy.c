
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sched_ops; } ;
struct intel_gvt {int sched_lock; TYPE_2__ scheduler; } ;
struct TYPE_3__ {int (* clean ) (struct intel_gvt*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_gvt*) ;

void intel_gvt_clean_sched_policy(struct intel_gvt *gvt)
{
 mutex_lock(&gvt->sched_lock);
 gvt->scheduler.sched_ops->clean(gvt);
 mutex_unlock(&gvt->sched_lock);
}
