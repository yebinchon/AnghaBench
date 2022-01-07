
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int vgpu_lock; } ;


 int intel_gvt_reset_vgpu_locked (struct intel_vgpu*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_gvt_reset_vgpu(struct intel_vgpu *vgpu)
{
 mutex_lock(&vgpu->vgpu_lock);
 intel_gvt_reset_vgpu_locked(vgpu, 1, 0);
 mutex_unlock(&vgpu->vgpu_lock);
}
