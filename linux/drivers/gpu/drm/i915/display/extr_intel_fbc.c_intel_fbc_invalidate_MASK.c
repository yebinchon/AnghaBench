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
struct intel_fbc {unsigned int busy_bits; int /*<<< orphan*/  lock; scalar_t__ enabled; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
typedef  enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;

/* Variables and functions */
 int ORIGIN_FLIP ; 
 int ORIGIN_GTT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,char*) ; 
 unsigned int FUNC2 (struct intel_fbc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_i915_private *dev_priv,
			  unsigned int frontbuffer_bits,
			  enum fb_op_origin origin)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	if (!FUNC0(dev_priv))
		return;

	if (origin == ORIGIN_GTT || origin == ORIGIN_FLIP)
		return;

	FUNC3(&fbc->lock);

	fbc->busy_bits |= FUNC2(fbc) & frontbuffer_bits;

	if (fbc->enabled && fbc->busy_bits)
		FUNC1(dev_priv, "frontbuffer write");

	FUNC4(&fbc->lock);
}