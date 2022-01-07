
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int PCH_RAWCLK_FREQ ;
 int RAWCLK_FREQ_MASK ;

__attribute__((used)) static int pch_rawclk(struct drm_i915_private *dev_priv)
{
 return (I915_READ(PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
}
