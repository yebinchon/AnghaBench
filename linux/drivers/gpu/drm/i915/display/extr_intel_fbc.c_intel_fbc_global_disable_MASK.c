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
struct intel_fbc {int /*<<< orphan*/  lock; TYPE_1__* crtc; scalar_t__ enabled; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct TYPE_2__ {int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_i915_private *dev_priv)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (!FUNC2(dev_priv))
		return;

	FUNC3(&fbc->lock);
	if (fbc->enabled) {
		FUNC0(fbc->crtc->active);
		FUNC1(dev_priv);
	}
	FUNC4(&fbc->lock);
}