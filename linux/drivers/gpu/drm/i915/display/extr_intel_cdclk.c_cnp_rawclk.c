
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CNP_RAWCLK_DEN (scalar_t__) ;
 int CNP_RAWCLK_DIV (int) ;
 scalar_t__ DIV_ROUND_CLOSEST (int,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int ICP_RAWCLK_NUM (int) ;
 scalar_t__ INTEL_PCH_TYPE (struct drm_i915_private*) ;
 scalar_t__ PCH_ICP ;
 int PCH_RAWCLK_FREQ ;
 int SFUSE_STRAP ;
 int SFUSE_STRAP_RAW_FREQUENCY ;

__attribute__((used)) static int cnp_rawclk(struct drm_i915_private *dev_priv)
{
 u32 rawclk;
 int divider, fraction;

 if (I915_READ(SFUSE_STRAP) & SFUSE_STRAP_RAW_FREQUENCY) {

  divider = 24000;
  fraction = 0;
 } else {

  divider = 19000;
  fraction = 200;
 }

 rawclk = CNP_RAWCLK_DIV(divider / 1000);
 if (fraction) {
  int numerator = 1;

  rawclk |= CNP_RAWCLK_DEN(DIV_ROUND_CLOSEST(numerator * 1000,
          fraction) - 1);
  if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
   rawclk |= ICP_RAWCLK_NUM(numerator);
 }

 I915_WRITE(PCH_RAWCLK_FREQ, rawclk);
 return divider + fraction;
}
