
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {int * sched_data; struct intel_gvt* gvt; } ;
struct TYPE_2__ {struct gvt_sched_data* sched_data; } ;
struct intel_gvt {int vgpu_idr; TYPE_1__ scheduler; } ;
struct gvt_sched_data {int timer; } ;


 int hrtimer_cancel (int *) ;
 scalar_t__ idr_is_empty (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void tbs_sched_clean_vgpu(struct intel_vgpu *vgpu)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct gvt_sched_data *sched_data = gvt->scheduler.sched_data;

 kfree(vgpu->sched_data);
 vgpu->sched_data = ((void*)0);


 if (idr_is_empty(&gvt->vgpu_idr))
  hrtimer_cancel(&sched_data->timer);
}
