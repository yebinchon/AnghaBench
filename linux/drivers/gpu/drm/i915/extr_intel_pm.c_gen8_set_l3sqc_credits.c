
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEN7_DOP_CLOCK_GATE_ENABLE ;
 int GEN7_MISCCPCTL ;
 int GEN8_L3SQCREG1 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int L3_GENERAL_PRIO_CREDITS (int) ;
 int L3_HIGH_PRIO_CREDITS (int) ;
 int L3_PRIO_CREDITS_MASK ;
 int POSTING_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
       int general_prio_credits,
       int high_prio_credits)
{
 u32 misccpctl;
 u32 val;


 misccpctl = I915_READ(GEN7_MISCCPCTL);
 I915_WRITE(GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);

 val = I915_READ(GEN8_L3SQCREG1);
 val &= ~L3_PRIO_CREDITS_MASK;
 val |= L3_GENERAL_PRIO_CREDITS(general_prio_credits);
 val |= L3_HIGH_PRIO_CREDITS(high_prio_credits);
 I915_WRITE(GEN8_L3SQCREG1, val);





 POSTING_READ(GEN8_L3SQCREG1);
 udelay(1);
 I915_WRITE(GEN7_MISCCPCTL, misccpctl);
}
