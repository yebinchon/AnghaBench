#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int enabled; scalar_t__ ctx_corrupted; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_2__ rc6; TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_3__ gt_pm; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv)
{
	FUNC9(&dev_priv->gt_pm.rps.lock);

	if (dev_priv->gt_pm.rc6.enabled)
		return;

	if (dev_priv->gt_pm.rc6.ctx_corrupted)
		return;

	if (FUNC2(dev_priv))
		FUNC4(dev_priv);
	else if (FUNC3(dev_priv))
		FUNC10(dev_priv);
	else if (FUNC0(dev_priv) >= 11)
		FUNC5(dev_priv);
	else if (FUNC0(dev_priv) >= 9)
		FUNC8(dev_priv);
	else if (FUNC1(dev_priv))
		FUNC7(dev_priv);
	else if (FUNC0(dev_priv) >= 6)
		FUNC6(dev_priv);

	dev_priv->gt_pm.rc6.enabled = true;
}