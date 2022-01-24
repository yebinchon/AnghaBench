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
struct TYPE_2__ {unsigned int busy_frontbuffer_bits; int /*<<< orphan*/  lock; int /*<<< orphan*/  pipe; int /*<<< orphan*/  enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
typedef  enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int ORIGIN_FLIP ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_i915_private *dev_priv,
			  unsigned frontbuffer_bits, enum fb_op_origin origin)
{
	if (!FUNC0(dev_priv))
		return;

	if (origin == ORIGIN_FLIP)
		return;

	FUNC3(&dev_priv->psr.lock);
	if (!dev_priv->psr.enabled) {
		FUNC4(&dev_priv->psr.lock);
		return;
	}

	frontbuffer_bits &= FUNC1(dev_priv->psr.pipe);
	dev_priv->psr.busy_frontbuffer_bits |= frontbuffer_bits;

	if (frontbuffer_bits)
		FUNC2(dev_priv);

	FUNC4(&dev_priv->psr.lock);
}