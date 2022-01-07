
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CNL_REVID_A0 ;
 int CNL_REVID_B0 ;
 int DISP_ARB_CTL ;
 int DISP_FBC_MEMORY_WAKE ;
 int GEN8_CHICKEN_DCPR_1 ;
 int GWUNIT_CLKGATE_DIS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_CNL_REVID (struct drm_i915_private*,int ,int ) ;
 int MASK_WAKEMEM ;
 int RCCUNIT_CLKGATE_DIS ;
 int SARBUNIT_CLKGATE_DIS ;
 int SLICE_UNIT_LEVEL_CLKGATE ;
 int SUBSLICE_UNIT_LEVEL_CLKGATE ;
 int UNSLICE_UNIT_LEVEL_CLKGATE ;
 int VFUNIT_CLKGATE_DIS ;
 int _3D_CHICKEN3 ;
 int _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE ;
 int _MASKED_BIT_ENABLE (int ) ;
 int cnp_init_clock_gating (struct drm_i915_private*) ;

__attribute__((used)) static void cnl_init_clock_gating(struct drm_i915_private *dev_priv)
{
 u32 val;
 cnp_init_clock_gating(dev_priv);


 I915_WRITE(_3D_CHICKEN3,
     _MASKED_BIT_ENABLE(_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE));


 I915_WRITE(GEN8_CHICKEN_DCPR_1,
     I915_READ(GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);


 I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
     DISP_FBC_MEMORY_WAKE);

 val = I915_READ(SLICE_UNIT_LEVEL_CLKGATE);

 val |= RCCUNIT_CLKGATE_DIS;

 if (IS_CNL_REVID(dev_priv, CNL_REVID_A0, CNL_REVID_B0))
  val |= SARBUNIT_CLKGATE_DIS;
 I915_WRITE(SLICE_UNIT_LEVEL_CLKGATE, val);


 val = I915_READ(SUBSLICE_UNIT_LEVEL_CLKGATE);
 val |= GWUNIT_CLKGATE_DIS;
 I915_WRITE(SUBSLICE_UNIT_LEVEL_CLKGATE, val);



 val = I915_READ(UNSLICE_UNIT_LEVEL_CLKGATE);
 val |= VFUNIT_CLKGATE_DIS;
 I915_WRITE(UNSLICE_UNIT_LEVEL_CLKGATE, val);
}
