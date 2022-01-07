
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_i915_private {int dummy; } ;


 int GEN8_PPAT (int,int) ;
 int GEN8_PPAT_AGE (int) ;
 int GEN8_PPAT_LLC ;
 int GEN8_PPAT_LLCELLC ;
 int GEN8_PPAT_UC ;
 int GEN8_PPAT_WB ;
 int GEN8_PPAT_WC ;
 int GEN8_PPAT_WT ;
 int GEN8_PRIVATE_PAT_HI ;
 int GEN8_PRIVATE_PAT_LO ;
 int I915_WRITE (int ,int ) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void bdw_setup_private_ppat(struct drm_i915_private *dev_priv)
{
 u64 pat;

 pat = GEN8_PPAT(0, GEN8_PPAT_WB | GEN8_PPAT_LLC) |
       GEN8_PPAT(1, GEN8_PPAT_WC | GEN8_PPAT_LLCELLC) |
       GEN8_PPAT(2, GEN8_PPAT_WT | GEN8_PPAT_LLCELLC) |
       GEN8_PPAT(3, GEN8_PPAT_UC) |
       GEN8_PPAT(4, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | GEN8_PPAT_AGE(0)) |
       GEN8_PPAT(5, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | GEN8_PPAT_AGE(1)) |
       GEN8_PPAT(6, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | GEN8_PPAT_AGE(2)) |
       GEN8_PPAT(7, GEN8_PPAT_WB | GEN8_PPAT_LLCELLC | GEN8_PPAT_AGE(3));

 I915_WRITE(GEN8_PRIVATE_PAT_LO, lower_32_bits(pat));
 I915_WRITE(GEN8_PRIVATE_PAT_HI, upper_32_bits(pat));
}
