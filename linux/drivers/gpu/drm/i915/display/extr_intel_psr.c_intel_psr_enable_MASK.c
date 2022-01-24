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
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_psr; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  debug; } ;
struct TYPE_3__ {int dp; } ;
struct drm_i915_private {TYPE_2__ psr; TYPE_1__ drrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct drm_i915_private* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct intel_dp *intel_dp,
		      const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC3(intel_dp);

	if (!crtc_state->has_psr)
		return;

	if (FUNC2(!FUNC0(dev_priv)))
		return;

	FUNC2(dev_priv->drrs.dp);

	FUNC5(&dev_priv->psr.lock);

	if (!FUNC7(dev_priv->psr.debug)) {
		FUNC1("PSR disabled by flag\n");
		goto unlock;
	}

	FUNC4(dev_priv, crtc_state);

unlock:
	FUNC6(&dev_priv->psr.lock);
}