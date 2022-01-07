
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int vgpu_idr; int idle_vgpu; } ;
struct drm_i915_private {int * gvt; } ;


 scalar_t__ WARN_ON (int) ;
 int clean_service_thread (struct intel_gvt*) ;
 int idr_destroy (int *) ;
 int intel_gvt_clean_cmd_parser (struct intel_gvt*) ;
 int intel_gvt_clean_gtt (struct intel_gvt*) ;
 int intel_gvt_clean_irq (struct intel_gvt*) ;
 int intel_gvt_clean_mmio_info (struct intel_gvt*) ;
 int intel_gvt_clean_sched_policy (struct intel_gvt*) ;
 int intel_gvt_clean_vgpu_types (struct intel_gvt*) ;
 int intel_gvt_clean_workload_scheduler (struct intel_gvt*) ;
 int intel_gvt_cleanup_vgpu_type_groups (struct intel_gvt*) ;
 int intel_gvt_debugfs_clean (struct intel_gvt*) ;
 int intel_gvt_destroy_idle_vgpu (int ) ;
 int intel_gvt_free_firmware (struct intel_gvt*) ;
 int kfree (int *) ;
 struct intel_gvt* to_gvt (struct drm_i915_private*) ;

void intel_gvt_clean_device(struct drm_i915_private *dev_priv)
{
 struct intel_gvt *gvt = to_gvt(dev_priv);

 if (WARN_ON(!gvt))
  return;

 intel_gvt_destroy_idle_vgpu(gvt->idle_vgpu);
 intel_gvt_cleanup_vgpu_type_groups(gvt);
 intel_gvt_clean_vgpu_types(gvt);

 intel_gvt_debugfs_clean(gvt);
 clean_service_thread(gvt);
 intel_gvt_clean_cmd_parser(gvt);
 intel_gvt_clean_sched_policy(gvt);
 intel_gvt_clean_workload_scheduler(gvt);
 intel_gvt_clean_gtt(gvt);
 intel_gvt_clean_irq(gvt);
 intel_gvt_free_firmware(gvt);
 intel_gvt_clean_mmio_info(gvt);
 idr_destroy(&gvt->vgpu_idr);

 kfree(dev_priv->gvt);
 dev_priv->gvt = ((void*)0);
}
