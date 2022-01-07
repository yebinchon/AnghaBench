
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int vgpu_lock; } ;


 int ALL_ENGINES ;
 int intel_gvt_deactivate_vgpu (struct intel_vgpu*) ;
 int intel_vgpu_clean_workloads (struct intel_vgpu*,int ) ;
 int intel_vgpu_dmabuf_cleanup (struct intel_vgpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_gvt_release_vgpu(struct intel_vgpu *vgpu)
{
 intel_gvt_deactivate_vgpu(vgpu);

 mutex_lock(&vgpu->vgpu_lock);
 intel_vgpu_clean_workloads(vgpu, ALL_ENGINES);
 intel_vgpu_dmabuf_cleanup(vgpu);
 mutex_unlock(&vgpu->vgpu_lock);
}
