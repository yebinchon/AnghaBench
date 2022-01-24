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
struct intel_fbc {unsigned int busy_bits; int /*<<< orphan*/  lock; int /*<<< orphan*/  crtc; int /*<<< orphan*/  flip_pending; scalar_t__ active; scalar_t__ enabled; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
typedef  enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;

/* Variables and functions */
 int ORIGIN_FLIP ; 
 int ORIGIN_GTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 unsigned int FUNC2 (struct intel_fbc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_i915_private *dev_priv,
		     unsigned int frontbuffer_bits, enum fb_op_origin origin)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (!FUNC1(dev_priv))
		return;

	FUNC4(&fbc->lock);

	fbc->busy_bits &= ~frontbuffer_bits;

	if (origin == ORIGIN_GTT || origin == ORIGIN_FLIP)
		goto out;

	if (!fbc->busy_bits && fbc->enabled &&
	    (frontbuffer_bits & FUNC2(fbc))) {
		if (fbc->active)
			FUNC3(dev_priv);
		else if (!fbc->flip_pending)
			FUNC0(fbc->crtc);
	}

out:
	FUNC5(&fbc->lock);
}