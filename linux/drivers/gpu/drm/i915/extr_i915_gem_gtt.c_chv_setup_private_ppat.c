
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_i915_private {int dummy; } ;


 int CHV_PPAT_SNOOP ;
 int GEN8_PPAT (int,int ) ;
 int GEN8_PRIVATE_PAT_HI ;
 int GEN8_PRIVATE_PAT_LO ;
 int I915_WRITE (int ,int ) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void chv_setup_private_ppat(struct drm_i915_private *dev_priv)
{
 u64 pat;
 pat = GEN8_PPAT(0, CHV_PPAT_SNOOP) |
       GEN8_PPAT(1, 0) |
       GEN8_PPAT(2, 0) |
       GEN8_PPAT(3, 0) |
       GEN8_PPAT(4, CHV_PPAT_SNOOP) |
       GEN8_PPAT(5, CHV_PPAT_SNOOP) |
       GEN8_PPAT(6, CHV_PPAT_SNOOP) |
       GEN8_PPAT(7, CHV_PPAT_SNOOP);

 I915_WRITE(GEN8_PRIVATE_PAT_LO, lower_32_bits(pat));
 I915_WRITE(GEN8_PRIVATE_PAT_HI, upper_32_bits(pat));
}
