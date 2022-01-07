
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEN6_CSUNIT_CLOCK_GATE_DISABLE ;
 int GEN6_RC_SLEEP_PSMI_CONTROL ;
 int GEN6_UCGCTL1 ;
 int GEN7_FF_THREAD_MODE ;
 int GEN7_FF_VS_REF_CNT_FFME ;
 int GEN8_FF_DS_REF_CNT_FFME ;
 int GEN8_RC_SEMA_IDLE_MSG_DISABLE ;
 int GEN8_SDEUNIT_CLOCK_GATE_DISABLE ;
 int GEN8_UCGCTL6 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int gen8_set_l3sqc_credits (struct drm_i915_private*,int,int) ;

__attribute__((used)) static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
{


 I915_WRITE(GEN7_FF_THREAD_MODE,
     I915_READ(GEN7_FF_THREAD_MODE) &
     ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));


 I915_WRITE(GEN6_RC_SLEEP_PSMI_CONTROL,
     _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));


 I915_WRITE(GEN6_UCGCTL1, I915_READ(GEN6_UCGCTL1) |
     GEN6_CSUNIT_CLOCK_GATE_DISABLE);


 I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
     GEN8_SDEUNIT_CLOCK_GATE_DISABLE);






 gen8_set_l3sqc_credits(dev_priv, 38, 2);
}
