
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEN12_PAT_INDEX (int) ;
 int GEN8_PPAT_UC ;
 int GEN8_PPAT_WB ;
 int GEN8_PPAT_WC ;
 int GEN8_PPAT_WT ;
 int I915_WRITE (int ,int ) ;

__attribute__((used)) static void tgl_setup_private_ppat(struct drm_i915_private *dev_priv)
{

 I915_WRITE(GEN12_PAT_INDEX(0), GEN8_PPAT_WB);
 I915_WRITE(GEN12_PAT_INDEX(1), GEN8_PPAT_WC);
 I915_WRITE(GEN12_PAT_INDEX(2), GEN8_PPAT_WT);
 I915_WRITE(GEN12_PAT_INDEX(3), GEN8_PPAT_UC);
 I915_WRITE(GEN12_PAT_INDEX(4), GEN8_PPAT_WB);
 I915_WRITE(GEN12_PAT_INDEX(5), GEN8_PPAT_WB);
 I915_WRITE(GEN12_PAT_INDEX(6), GEN8_PPAT_WB);
 I915_WRITE(GEN12_PAT_INDEX(7), GEN8_PPAT_WB);
}
