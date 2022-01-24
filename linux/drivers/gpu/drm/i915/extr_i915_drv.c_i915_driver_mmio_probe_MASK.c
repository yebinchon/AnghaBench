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
struct TYPE_2__ {int /*<<< orphan*/  uc; } ;
struct drm_i915_private {int /*<<< orphan*/  bridge_dev; int /*<<< orphan*/  uncore; TYPE_1__ gt; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct drm_i915_private *dev_priv)
{
	int ret;

	if (FUNC2(dev_priv))
		return -ENODEV;

	if (FUNC1(dev_priv))
		return -EIO;

	ret = FUNC9(&dev_priv->uncore);
	if (ret < 0)
		goto err_bridge;

	/* Try to make sure MCHBAR is enabled before poking at it */
	FUNC5(dev_priv);

	FUNC3(dev_priv);

	FUNC10(&dev_priv->uncore);

	FUNC7(&dev_priv->gt.uc);

	ret = FUNC4(dev_priv);
	if (ret)
		goto err_uncore;

	FUNC0(dev_priv);

	return 0;

err_uncore:
	FUNC6(dev_priv);
	FUNC8(&dev_priv->uncore);
err_bridge:
	FUNC11(dev_priv->bridge_dev);

	return ret;
}