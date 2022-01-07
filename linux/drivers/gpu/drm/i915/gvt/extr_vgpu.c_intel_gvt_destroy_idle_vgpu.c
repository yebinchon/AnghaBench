
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int vgpu_lock; } ;


 int intel_vgpu_clean_sched_policy (struct intel_vgpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfree (struct intel_vgpu*) ;

void intel_gvt_destroy_idle_vgpu(struct intel_vgpu *vgpu)
{
 mutex_lock(&vgpu->vgpu_lock);
 intel_vgpu_clean_sched_policy(vgpu);
 mutex_unlock(&vgpu->vgpu_lock);

 vfree(vgpu);
}
