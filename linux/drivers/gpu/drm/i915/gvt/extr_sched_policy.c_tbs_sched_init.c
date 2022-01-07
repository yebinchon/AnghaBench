
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gvt_workload_scheduler {struct gvt_sched_data* sched_data; } ;
struct intel_gvt {struct intel_gvt_workload_scheduler scheduler; } ;
struct TYPE_2__ {int function; } ;
struct gvt_sched_data {struct intel_gvt* gvt; int period; TYPE_1__ timer; int lru_runq_head; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GVT_DEFAULT_TIME_SLICE ;
 int HRTIMER_MODE_ABS ;
 int INIT_LIST_HEAD (int *) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 struct gvt_sched_data* kzalloc (int,int ) ;
 int tbs_timer_fn ;

__attribute__((used)) static int tbs_sched_init(struct intel_gvt *gvt)
{
 struct intel_gvt_workload_scheduler *scheduler =
  &gvt->scheduler;

 struct gvt_sched_data *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 INIT_LIST_HEAD(&data->lru_runq_head);
 hrtimer_init(&data->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 data->timer.function = tbs_timer_fn;
 data->period = GVT_DEFAULT_TIME_SLICE;
 data->gvt = gvt;

 scheduler->sched_data = data;

 return 0;
}
