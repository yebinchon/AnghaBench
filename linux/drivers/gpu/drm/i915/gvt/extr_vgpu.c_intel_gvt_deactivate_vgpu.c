
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running_workload_num; } ;
struct intel_vgpu {int active; int vgpu_lock; TYPE_1__ submission; } ;


 scalar_t__ atomic_read (int *) ;
 int intel_gvt_wait_vgpu_idle (struct intel_vgpu*) ;
 int intel_vgpu_stop_schedule (struct intel_vgpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_gvt_deactivate_vgpu(struct intel_vgpu *vgpu)
{
 mutex_lock(&vgpu->vgpu_lock);

 vgpu->active = 0;

 if (atomic_read(&vgpu->submission.running_workload_num)) {
  mutex_unlock(&vgpu->vgpu_lock);
  intel_gvt_wait_vgpu_idle(vgpu);
  mutex_lock(&vgpu->vgpu_lock);
 }

 intel_vgpu_stop_schedule(vgpu);

 mutex_unlock(&vgpu->vgpu_lock);
}
