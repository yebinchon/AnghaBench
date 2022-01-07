
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disable; int enable; int reset; } ;
struct intel_guc {TYPE_1__ interrupts; int notify; int handler; int send; int irq_lock; int send_mutex; int log; int ct; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* i915; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int gen11_disable_guc_interrupts ;
 int gen11_enable_guc_interrupts ;
 int gen11_guc_raise_irq ;
 int gen11_reset_guc_interrupts ;
 int gen8_guc_raise_irq ;
 int gen9_disable_guc_interrupts ;
 int gen9_enable_guc_interrupts ;
 int gen9_reset_guc_interrupts ;
 TYPE_2__* guc_to_gt (struct intel_guc*) ;
 int intel_guc_ct_init_early (int *) ;
 int intel_guc_fw_init_early (struct intel_guc*) ;
 int intel_guc_log_init_early (int *) ;
 int intel_guc_send_nop ;
 int intel_guc_submission_init_early (struct intel_guc*) ;
 int intel_guc_to_host_event_handler_nop ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void intel_guc_init_early(struct intel_guc *guc)
{
 struct drm_i915_private *i915 = guc_to_gt(guc)->i915;

 intel_guc_fw_init_early(guc);
 intel_guc_ct_init_early(&guc->ct);
 intel_guc_log_init_early(&guc->log);
 intel_guc_submission_init_early(guc);

 mutex_init(&guc->send_mutex);
 spin_lock_init(&guc->irq_lock);
 guc->send = intel_guc_send_nop;
 guc->handler = intel_guc_to_host_event_handler_nop;
 if (INTEL_GEN(i915) >= 11) {
  guc->notify = gen11_guc_raise_irq;
  guc->interrupts.reset = gen11_reset_guc_interrupts;
  guc->interrupts.enable = gen11_enable_guc_interrupts;
  guc->interrupts.disable = gen11_disable_guc_interrupts;
 } else {
  guc->notify = gen8_guc_raise_irq;
  guc->interrupts.reset = gen9_reset_guc_interrupts;
  guc->interrupts.enable = gen9_enable_guc_interrupts;
  guc->interrupts.disable = gen9_disable_guc_interrupts;
 }
}
