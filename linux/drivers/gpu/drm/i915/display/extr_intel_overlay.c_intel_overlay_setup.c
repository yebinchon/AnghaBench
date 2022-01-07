
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct overlay_registers {int dummy; } ;
struct intel_overlay {int color_key; int color_key_enabled; int brightness; int contrast; int saturation; int regs; int last_flip; int context; struct drm_i915_private* i915; } ;
struct drm_i915_private {struct intel_overlay* overlay; TYPE_1__** engine; } ;
struct TYPE_2__ {int kernel_context; } ;


 int DRM_INFO (char*) ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 int HAS_ENGINE (struct drm_i915_private*,size_t) ;
 int HAS_OVERLAY (struct drm_i915_private*) ;
 int OVERLAY_NEEDS_PHYSICAL (struct drm_i915_private*) ;
 size_t RCS0 ;
 int get_registers (struct intel_overlay*,int ) ;
 int i915_active_init (struct drm_i915_private*,int *,int *,int ) ;
 int intel_overlay_last_flip_retire ;
 int kfree (struct intel_overlay*) ;
 struct intel_overlay* kzalloc (int,int ) ;
 int memset_io (int ,int ,int) ;
 int update_polyphase_filter (int ) ;
 int update_reg_attrs (struct intel_overlay*,int ) ;

void intel_overlay_setup(struct drm_i915_private *dev_priv)
{
 struct intel_overlay *overlay;
 int ret;

 if (!HAS_OVERLAY(dev_priv))
  return;

 if (!HAS_ENGINE(dev_priv, RCS0))
  return;

 overlay = kzalloc(sizeof(*overlay), GFP_KERNEL);
 if (!overlay)
  return;

 overlay->i915 = dev_priv;
 overlay->context = dev_priv->engine[RCS0]->kernel_context;
 GEM_BUG_ON(!overlay->context);

 overlay->color_key = 0x0101fe;
 overlay->color_key_enabled = 1;
 overlay->brightness = -19;
 overlay->contrast = 75;
 overlay->saturation = 146;

 i915_active_init(dev_priv,
    &overlay->last_flip,
    ((void*)0), intel_overlay_last_flip_retire);

 ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(dev_priv));
 if (ret)
  goto out_free;

 memset_io(overlay->regs, 0, sizeof(struct overlay_registers));
 update_polyphase_filter(overlay->regs);
 update_reg_attrs(overlay, overlay->regs);

 dev_priv->overlay = overlay;
 DRM_INFO("Initialized overlay support.\n");
 return;

out_free:
 kfree(overlay);
}
