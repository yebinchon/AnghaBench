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
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct drm_i915_private *dev_priv)
{
	/* Powersaving is controlled by the host when inside a VM */
	if (FUNC6(dev_priv))
		return;

	FUNC7(&dev_priv->gt_pm.rps.lock);

	if (FUNC1(dev_priv))
		FUNC4(dev_priv);
	if (FUNC2(dev_priv))
		FUNC5(dev_priv);
	if (FUNC0(dev_priv))
		FUNC3(dev_priv);

	FUNC8(&dev_priv->gt_pm.rps.lock);
}