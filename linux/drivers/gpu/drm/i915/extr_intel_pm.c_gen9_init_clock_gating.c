
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CHICKEN_PAR1_1 ;
 int DISP_ARB_CTL ;
 int DISP_FBC_MEMORY_WAKE ;
 int DISP_FBC_WM_DIS ;
 int GEN7_DOP_CLOCK_GATE_ENABLE ;
 int GEN7_MISCCPCTL ;
 int GEN8_CHICKEN_DCPR_1 ;
 scalar_t__ HAS_LLC (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ILK_DPFC_CHICKEN ;
 int ILK_DPFC_DISABLE_DUMMY0 ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int MASK_WAKEMEM ;
 int SKL_DE_COMPRESSED_HASH_MODE ;
 int SKL_EDP_PSR_FIX_RDWRAP ;

__attribute__((used)) static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
{
 if (HAS_LLC(dev_priv)) {







  I915_WRITE(CHICKEN_PAR1_1,
      I915_READ(CHICKEN_PAR1_1) |
      SKL_DE_COMPRESSED_HASH_MODE);
 }


 I915_WRITE(CHICKEN_PAR1_1,
     I915_READ(CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);


 I915_WRITE(GEN8_CHICKEN_DCPR_1,
     I915_READ(GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);



 I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
     DISP_FBC_WM_DIS |
     DISP_FBC_MEMORY_WAKE);


 I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
     ILK_DPFC_DISABLE_DUMMY0);

 if (IS_SKYLAKE(dev_priv)) {

  I915_WRITE(GEN7_MISCCPCTL, I915_READ(GEN7_MISCCPCTL)
      & ~GEN7_DOP_CLOCK_GATE_ENABLE);
 }
}
