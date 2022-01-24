#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct intel_rps {scalar_t__ cur_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int GEN6_AGGRESSIVE_TURBO ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN6_PMINTRMSK ; 
 int /*<<< orphan*/  GEN6_RPNSWREQ ; 
 int /*<<< orphan*/  GEN6_RP_INTERRUPT_LIMITS ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int FUNC8 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,scalar_t__) ; 
 int FUNC11 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct drm_i915_private *dev_priv, u8 val)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;

	/* min/max delay may still have been modified so be sure to
	 * write the limits value.
	 */
	if (val != rps->cur_freq) {
		FUNC9(dev_priv, val);

		if (FUNC5(dev_priv) >= 9)
			FUNC4(GEN6_RPNSWREQ,
				   FUNC2(val));
		else if (FUNC7(dev_priv) || FUNC6(dev_priv))
			FUNC4(GEN6_RPNSWREQ,
				   FUNC3(val));
		else
			FUNC4(GEN6_RPNSWREQ,
				   FUNC0(val) |
				   FUNC1(0) |
				   GEN6_AGGRESSIVE_TURBO);
	}

	/* Make sure we continue to get interrupts
	 * until we hit the minimum or maximum frequencies.
	 */
	FUNC4(GEN6_RP_INTERRUPT_LIMITS, FUNC11(dev_priv, val));
	FUNC4(GEN6_PMINTRMSK, FUNC8(dev_priv, val));

	rps->cur_freq = val;
	FUNC12(FUNC10(dev_priv, val));

	return 0;
}