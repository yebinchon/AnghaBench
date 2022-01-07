
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_submission {int running_workload_num; } ;
struct intel_vgpu {struct intel_gvt* gvt; struct intel_vgpu_submission submission; } ;
struct intel_gvt_workload_scheduler {int workload_complete_wq; } ;
struct intel_gvt {struct intel_gvt_workload_scheduler scheduler; } ;


 scalar_t__ atomic_read (int *) ;
 int gvt_dbg_sched (char*) ;
 int wait_event (int ,int) ;

void intel_gvt_wait_vgpu_idle(struct intel_vgpu *vgpu)
{
 struct intel_vgpu_submission *s = &vgpu->submission;
 struct intel_gvt *gvt = vgpu->gvt;
 struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;

 if (atomic_read(&s->running_workload_num)) {
  gvt_dbg_sched("wait vgpu idle\n");

  wait_event(scheduler->workload_complete_wq,
    !atomic_read(&s->running_workload_num));
 }
}
