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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_i915_private *dev_priv)
{
	FUNC4(&dev_priv->gt_pm.rps.lock);

	FUNC1(dev_priv);
	FUNC3(dev_priv);
	if (FUNC0(dev_priv))
		FUNC2(dev_priv);

	FUNC5(&dev_priv->gt_pm.rps.lock);
}