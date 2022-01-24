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
typedef  int u32 ;
struct intel_cdclk_state {int /*<<< orphan*/  cdclk; int /*<<< orphan*/  voltage_level; int /*<<< orphan*/  vco; int /*<<< orphan*/  ref; } ;
struct TYPE_4__ {scalar_t__ cdclk; scalar_t__ bypass; int /*<<< orphan*/  ref; } ;
struct TYPE_3__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;

/* Variables and functions */
 int BXT_CDCLK_CD2X_DIV_SEL_MASK ; 
 int /*<<< orphan*/  CDCLK_CTL ; 
 int CDCLK_FREQ_DECIMAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_PIPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,struct intel_cdclk_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv)
{
	struct intel_cdclk_state sanitized_state;
	u32 val;

	/* This sets dev_priv->cdclk.hw. */
	FUNC7(dev_priv);
	FUNC6(&dev_priv->cdclk.hw, "Current CDCLK");

	/* This means CDCLK disabled. */
	if (dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
		goto sanitize;

	val = FUNC1(CDCLK_CTL);

	if ((val & BXT_CDCLK_CD2X_DIV_SEL_MASK) != 0)
		goto sanitize;

	if ((val & CDCLK_FREQ_DECIMAL_MASK) !=
	    FUNC8(dev_priv->cdclk.hw.cdclk))
		goto sanitize;

	return;

sanitize:
	FUNC0("Sanitizing cdclk programmed by pre-os\n");

	sanitized_state.ref = dev_priv->cdclk.hw.ref;
	sanitized_state.cdclk = FUNC2(0, sanitized_state.ref);
	sanitized_state.vco = FUNC3(dev_priv,
						     sanitized_state.cdclk);
	sanitized_state.voltage_level =
				FUNC4(dev_priv,
						       sanitized_state.cdclk);

	FUNC5(dev_priv, &sanitized_state, INVALID_PIPE);
}