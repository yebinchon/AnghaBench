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
struct intel_fbc {int /*<<< orphan*/  underrun_work; int /*<<< orphan*/  underrun_detected; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_i915_private *dev_priv)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (!FUNC1(dev_priv))
		return;

	/* There's no guarantee that underrun_detected won't be set to true
	 * right after this check and before the work is scheduled, but that's
	 * not a problem since we'll check it again under the work function
	 * while FBC is locked. This check here is just to prevent us from
	 * unnecessarily scheduling the work, and it relies on the fact that we
	 * never switch underrun_detect back to false after it's true. */
	if (FUNC0(fbc->underrun_detected))
		return;

	FUNC2(&fbc->underrun_work);
}