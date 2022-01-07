
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int id; int vgpu_lock; int active; struct intel_gvt* gvt; } ;
struct intel_gvt {int lock; int vgpu_idr; } ;


 int WARN (int ,char*) ;
 scalar_t__ idr_is_empty (int *) ;
 int idr_remove (int *,int ) ;
 int intel_gvt_clean_irq (struct intel_gvt*) ;
 int intel_gvt_debugfs_remove_vgpu (struct intel_vgpu*) ;
 int intel_gvt_hypervisor_detach_vgpu (struct intel_vgpu*) ;
 int intel_gvt_update_vgpu_types (struct intel_gvt*) ;
 int intel_vgpu_clean_display (struct intel_vgpu*) ;
 int intel_vgpu_clean_gtt (struct intel_vgpu*) ;
 int intel_vgpu_clean_mmio (struct intel_vgpu*) ;
 int intel_vgpu_clean_opregion (struct intel_vgpu*) ;
 int intel_vgpu_clean_sched_policy (struct intel_vgpu*) ;
 int intel_vgpu_clean_submission (struct intel_vgpu*) ;
 int intel_vgpu_dmabuf_cleanup (struct intel_vgpu*) ;
 int intel_vgpu_free_resource (struct intel_vgpu*) ;
 int intel_vgpu_reset_ggtt (struct intel_vgpu*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfree (struct intel_vgpu*) ;

void intel_gvt_destroy_vgpu(struct intel_vgpu *vgpu)
{
 struct intel_gvt *gvt = vgpu->gvt;

 mutex_lock(&vgpu->vgpu_lock);

 WARN(vgpu->active, "vGPU is still active!\n");

 intel_gvt_debugfs_remove_vgpu(vgpu);
 intel_vgpu_clean_sched_policy(vgpu);
 intel_vgpu_clean_submission(vgpu);
 intel_vgpu_clean_display(vgpu);
 intel_vgpu_clean_opregion(vgpu);
 intel_vgpu_reset_ggtt(vgpu, 1);
 intel_vgpu_clean_gtt(vgpu);
 intel_gvt_hypervisor_detach_vgpu(vgpu);
 intel_vgpu_free_resource(vgpu);
 intel_vgpu_clean_mmio(vgpu);
 intel_vgpu_dmabuf_cleanup(vgpu);
 mutex_unlock(&vgpu->vgpu_lock);

 mutex_lock(&gvt->lock);
 idr_remove(&gvt->vgpu_idr, vgpu->id);
 if (idr_is_empty(&gvt->vgpu_idr))
  intel_gvt_clean_irq(gvt);
 intel_gvt_update_vgpu_types(gvt);
 mutex_unlock(&gvt->lock);

 vfree(vgpu);
}
