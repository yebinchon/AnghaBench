
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_guc {scalar_t__ handler; scalar_t__ mmio_msg; } ;
struct drm_i915_private {int irq_lock; } ;
struct TYPE_2__ {struct drm_i915_private* i915; } ;


 int GEM_BUG_ON (int) ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 scalar_t__ intel_guc_to_host_event_handler_nop ;
 int intel_guc_to_host_process_recv_msg (struct intel_guc*,scalar_t__*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void guc_handle_mmio_msg(struct intel_guc *guc)
{
 struct drm_i915_private *i915 = guc_to_gt(guc)->i915;


 GEM_BUG_ON(guc->handler == intel_guc_to_host_event_handler_nop);

 if (!guc->mmio_msg)
  return;

 spin_lock_irq(&i915->irq_lock);
 intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
 spin_unlock_irq(&i915->irq_lock);

 guc->mmio_msg = 0;
}
