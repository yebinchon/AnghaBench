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
struct intel_fbc {int /*<<< orphan*/  lock; struct intel_crtc* crtc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC4(crtc->base.dev);
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (!FUNC1(dev_priv))
		return;

	FUNC2(&fbc->lock);
	if (fbc->crtc == crtc)
		FUNC0(dev_priv);
	FUNC3(&fbc->lock);
}