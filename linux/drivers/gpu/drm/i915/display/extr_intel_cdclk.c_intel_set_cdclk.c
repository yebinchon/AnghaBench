
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_cdclk_state {int dummy; } ;
struct TYPE_3__ {struct intel_cdclk_state const hw; } ;
struct TYPE_4__ {int (* set_cdclk ) (struct drm_i915_private*,struct intel_cdclk_state const*,int) ;} ;
struct drm_i915_private {TYPE_1__ cdclk; TYPE_2__ display; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ WARN (int ,char*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int intel_cdclk_changed (struct intel_cdclk_state const*,struct intel_cdclk_state const*) ;
 int intel_dump_cdclk_state (struct intel_cdclk_state const*,char*) ;
 int stub1 (struct drm_i915_private*,struct intel_cdclk_state const*,int) ;

__attribute__((used)) static void intel_set_cdclk(struct drm_i915_private *dev_priv,
       const struct intel_cdclk_state *cdclk_state,
       enum pipe pipe)
{
 if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_state))
  return;

 if (WARN_ON_ONCE(!dev_priv->display.set_cdclk))
  return;

 intel_dump_cdclk_state(cdclk_state, "Changing CDCLK to");

 dev_priv->display.set_cdclk(dev_priv, cdclk_state, pipe);

 if (WARN(intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_state),
   "cdclk state doesn't match!\n")) {
  intel_dump_cdclk_state(&dev_priv->cdclk.hw, "[hw state]");
  intel_dump_cdclk_state(cdclk_state, "[sw state]");
 }
}
