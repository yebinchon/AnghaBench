
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_gvt_event_type { ____Placeholder_intel_gvt_event_type } intel_gvt_event_type ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int AUX_CHANNEL_A ;
 int AUX_CHANNEL_B ;
 int AUX_CHANNEL_C ;
 int AUX_CHANNEL_D ;
 int EINVAL ;
 int WARN_ON (int) ;
 unsigned int _DPA_AUX_CH_CTL ;
 unsigned int _DPB_AUX_CH_CTL ;
 unsigned int _DPC_AUX_CH_CTL ;
 unsigned int _DPD_AUX_CH_CTL ;
 unsigned int _PCH_DPB_AUX_CH_CTL ;
 unsigned int _PCH_DPC_AUX_CH_CTL ;
 unsigned int _PCH_DPD_AUX_CH_CTL ;
 int intel_vgpu_trigger_virtual_event (struct intel_vgpu*,int) ;

__attribute__((used)) static int trigger_aux_channel_interrupt(struct intel_vgpu *vgpu,
  unsigned int reg)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 enum intel_gvt_event_type event;

 if (reg == _DPA_AUX_CH_CTL)
  event = AUX_CHANNEL_A;
 else if (reg == _PCH_DPB_AUX_CH_CTL || reg == _DPB_AUX_CH_CTL)
  event = AUX_CHANNEL_B;
 else if (reg == _PCH_DPC_AUX_CH_CTL || reg == _DPC_AUX_CH_CTL)
  event = AUX_CHANNEL_C;
 else if (reg == _PCH_DPD_AUX_CH_CTL || reg == _DPD_AUX_CH_CTL)
  event = AUX_CHANNEL_D;
 else {
  WARN_ON(1);
  return -EINVAL;
 }

 intel_vgpu_trigger_virtual_event(vgpu, event);
 return 0;
}
