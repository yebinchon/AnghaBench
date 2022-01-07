
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intel_dp {int (* get_aux_clock_divider ) (struct intel_dp*,int ) ;int (* get_aux_send_ctl ) (struct intel_dp*,int,int) ;} ;
struct drm_i915_private {int dummy; } ;
typedef int aux_msg ;


 int BUILD_BUG_ON (int) ;



 int EDP_PSR_AUX_CTL ;
 int EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK ;
 int EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK ;
 int EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK ;
 int EDP_PSR_AUX_CTL_TIME_OUT_MASK ;
 int EDP_PSR_AUX_DATA (int) ;
 int I915_WRITE (int ,int) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_dp_pack_aux (int const*,int) ;
 int stub1 (struct intel_dp*,int ) ;
 int stub2 (struct intel_dp*,int,int) ;

__attribute__((used)) static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 u32 aux_clock_divider, aux_ctl;
 int i;
 static const u8 aux_msg[] = {
  [0] = 130 << 4,
  [1] = 129 >> 8,
  [2] = 129 & 0xff,
  [3] = 1 - 1,
  [4] = 128,
 };
 u32 psr_aux_mask = EDP_PSR_AUX_CTL_TIME_OUT_MASK |
      EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK |
      EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK |
      EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK;

 BUILD_BUG_ON(sizeof(aux_msg) > 20);
 for (i = 0; i < sizeof(aux_msg); i += 4)
  I915_WRITE(EDP_PSR_AUX_DATA(i >> 2),
      intel_dp_pack_aux(&aux_msg[i], sizeof(aux_msg) - i));

 aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, 0);


 aux_ctl = intel_dp->get_aux_send_ctl(intel_dp, sizeof(aux_msg),
          aux_clock_divider);


 aux_ctl &= psr_aux_mask;
 I915_WRITE(EDP_PSR_AUX_CTL, aux_ctl);
}
