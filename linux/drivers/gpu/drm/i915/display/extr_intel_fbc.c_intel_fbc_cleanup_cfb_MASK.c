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
struct intel_fbc {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_i915_private *dev_priv)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (!FUNC1(dev_priv))
		return;

	FUNC2(&fbc->lock);
	FUNC0(dev_priv);
	FUNC3(&fbc->lock);
}