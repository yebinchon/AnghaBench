
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgpu_sched_data {int pri_sched; int active; int lru_list; int pri_time; } ;
struct intel_vgpu {struct vgpu_sched_data* sched_data; TYPE_1__* gvt; } ;
struct gvt_sched_data {int period; int timer; int lru_runq_head; } ;
typedef int ktime_t ;
struct TYPE_4__ {struct gvt_sched_data* sched_data; } ;
struct TYPE_3__ {TYPE_2__ scheduler; } ;


 int GVT_SCHED_VGPU_PRI_TIME ;
 int HRTIMER_MODE_ABS ;
 int hrtimer_active (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_add_ns (int ,int ) ;
 int ktime_get () ;
 int ktime_set (int ,int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void tbs_sched_start_schedule(struct intel_vgpu *vgpu)
{
 struct gvt_sched_data *sched_data = vgpu->gvt->scheduler.sched_data;
 struct vgpu_sched_data *vgpu_data = vgpu->sched_data;
 ktime_t now;

 if (!list_empty(&vgpu_data->lru_list))
  return;

 now = ktime_get();
 vgpu_data->pri_time = ktime_add(now,
     ktime_set(GVT_SCHED_VGPU_PRI_TIME, 0));
 vgpu_data->pri_sched = 1;

 list_add(&vgpu_data->lru_list, &sched_data->lru_runq_head);

 if (!hrtimer_active(&sched_data->timer))
  hrtimer_start(&sched_data->timer, ktime_add_ns(ktime_get(),
   sched_data->period), HRTIMER_MODE_ABS);
 vgpu_data->active = 1;
}
