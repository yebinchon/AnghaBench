#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_cdclk_state {int dummy; } ;
struct TYPE_3__ {struct intel_cdclk_state const hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_cdclk ) (struct drm_i915_private*,struct intel_cdclk_state const*,int) ;} ;
struct drm_i915_private {TYPE_1__ cdclk; TYPE_2__ display; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_cdclk_state const*,struct intel_cdclk_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_cdclk_state const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_cdclk_state const*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
			    const struct intel_cdclk_state *cdclk_state,
			    enum pipe pipe)
{
	if (!FUNC2(&dev_priv->cdclk.hw, cdclk_state))
		return;

	if (FUNC1(!dev_priv->display.set_cdclk))
		return;

	FUNC3(cdclk_state, "Changing CDCLK to");

	dev_priv->display.set_cdclk(dev_priv, cdclk_state, pipe);

	if (FUNC0(FUNC2(&dev_priv->cdclk.hw, cdclk_state),
		 "cdclk state doesn't match!\n")) {
		FUNC3(&dev_priv->cdclk.hw, "[hw state]");
		FUNC3(cdclk_state, "[sw state]");
	}
}