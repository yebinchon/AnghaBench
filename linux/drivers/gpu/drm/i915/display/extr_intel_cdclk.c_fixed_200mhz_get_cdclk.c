
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_cdclk_state {int cdclk; } ;
struct drm_i915_private {int dummy; } ;



__attribute__((used)) static void fixed_200mhz_get_cdclk(struct drm_i915_private *dev_priv,
       struct intel_cdclk_state *cdclk_state)
{
 cdclk_state->cdclk = 200000;
}
