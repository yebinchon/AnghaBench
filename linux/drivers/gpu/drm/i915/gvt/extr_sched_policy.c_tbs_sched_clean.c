
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt_workload_scheduler {struct gvt_sched_data* sched_data; } ;
struct intel_gvt {struct intel_gvt_workload_scheduler scheduler; } ;
struct gvt_sched_data {int timer; } ;


 int hrtimer_cancel (int *) ;
 int kfree (struct gvt_sched_data*) ;

__attribute__((used)) static void tbs_sched_clean(struct intel_gvt *gvt)
{
 struct intel_gvt_workload_scheduler *scheduler =
  &gvt->scheduler;
 struct gvt_sched_data *data = scheduler->sched_data;

 hrtimer_cancel(&data->timer);

 kfree(data);
 scheduler->sched_data = ((void*)0);
}
