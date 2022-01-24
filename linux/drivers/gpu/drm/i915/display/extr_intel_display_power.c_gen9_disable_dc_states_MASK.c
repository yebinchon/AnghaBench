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
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_cdclk ) (struct drm_i915_private*,struct intel_cdclk_state*) ;} ;
struct drm_i915_private {TYPE_2__ cdclk; TYPE_1__ display; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_STATE_DISABLE ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct intel_cdclk_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,struct intel_cdclk_state*) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv)
{
	struct intel_cdclk_state cdclk_state = {};

	FUNC5(dev_priv, DC_STATE_DISABLE);

	dev_priv->display.get_cdclk(dev_priv, &cdclk_state);
	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
	FUNC2(FUNC6(&dev_priv->cdclk.hw, &cdclk_state));

	FUNC4(dev_priv);

	if (FUNC1(dev_priv))
		FUNC3(dev_priv);

	if (FUNC0(dev_priv) >= 11)
		/*
		 * DMC retains HW context only for port A, the other combo
		 * PHY's HW context for port B is lost after DC transitions,
		 * so we need to restore it manually.
		 */
		FUNC7(dev_priv);
}