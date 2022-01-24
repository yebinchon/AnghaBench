#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_dp {int dummy; } ;
struct intel_crtc_state {scalar_t__ crc_enabled; scalar_t__ has_psr; } ;
struct i915_psr {int enabled; int psr2_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  busy_frontbuffer_bits; int /*<<< orphan*/  active; int /*<<< orphan*/  debug; int /*<<< orphan*/  dp; } ;
struct drm_i915_private {struct i915_psr psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 struct intel_dp* FUNC2 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC3 (struct intel_dp*) ; 
 int FUNC4 (struct drm_i915_private*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct intel_dp *intel_dp,
		      const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC3(intel_dp);
	struct i915_psr *psr = &dev_priv->psr;
	bool enable, psr2_enable;

	if (!FUNC0(dev_priv) || FUNC2(psr->dp) != intel_dp)
		return;

	FUNC7(&dev_priv->psr.lock);

	enable = crtc_state->has_psr && FUNC10(psr->debug);
	psr2_enable = FUNC4(dev_priv, crtc_state);

	if (enable == psr->enabled && psr2_enable == psr->psr2_enabled) {
		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
		if (crtc_state->crc_enabled && psr->enabled)
			FUNC9(dev_priv);
		else if (FUNC1(dev_priv) < 9 && psr->enabled) {
			/*
			 * Activate PSR again after a force exit when enabling
			 * CRC in older gens
			 */
			if (!dev_priv->psr.active &&
			    !dev_priv->psr.busy_frontbuffer_bits)
				FUNC11(&dev_priv->psr.work);
		}

		goto unlock;
	}

	if (psr->enabled)
		FUNC5(intel_dp);

	if (enable)
		FUNC6(dev_priv, crtc_state);

unlock:
	FUNC8(&dev_priv->psr.lock);
}