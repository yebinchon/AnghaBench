
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc {int (* handler ) (struct intel_guc*) ;int send; int ct; } ;
struct drm_i915_private {int irq_lock; } ;
struct TYPE_2__ {struct drm_i915_private* i915; } ;


 int DRM_INFO (char*) ;
 int ENXIO ;
 int GEM_BUG_ON (int ) ;
 int guc_communication_enabled (struct intel_guc*) ;
 int guc_enable_interrupts (struct intel_guc*) ;
 int guc_get_mmio_msg (struct intel_guc*) ;
 int guc_handle_mmio_msg (struct intel_guc*) ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 int i915_inject_load_error (struct drm_i915_private*,int ) ;
 int intel_guc_ct_enable (int *) ;
 int intel_guc_send_ct ;
 int intel_guc_to_host_event_handler_ct (struct intel_guc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int guc_enable_communication(struct intel_guc *guc)
{
 struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 int ret;

 GEM_BUG_ON(guc_communication_enabled(guc));

 ret = i915_inject_load_error(i915, -ENXIO);
 if (ret)
  return ret;

 ret = intel_guc_ct_enable(&guc->ct);
 if (ret)
  return ret;

 guc->send = intel_guc_send_ct;
 guc->handler = intel_guc_to_host_event_handler_ct;


 guc_get_mmio_msg(guc);
 guc_handle_mmio_msg(guc);

 guc_enable_interrupts(guc);


 spin_lock_irq(&i915->irq_lock);
 intel_guc_to_host_event_handler_ct(guc);
 spin_unlock_irq(&i915->irq_lock);

 DRM_INFO("GuC communication enabled\n");

 return 0;
}
