
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* sched_ops; } ;
struct intel_gvt {int sched_lock; TYPE_1__ scheduler; } ;
struct TYPE_4__ {int (* init ) (struct intel_gvt*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_gvt*) ;
 TYPE_2__ tbs_schedule_ops ;

int intel_gvt_init_sched_policy(struct intel_gvt *gvt)
{
 int ret;

 mutex_lock(&gvt->sched_lock);
 gvt->scheduler.sched_ops = &tbs_schedule_ops;
 ret = gvt->scheduler.sched_ops->init(gvt);
 mutex_unlock(&gvt->sched_lock);

 return ret;
}
