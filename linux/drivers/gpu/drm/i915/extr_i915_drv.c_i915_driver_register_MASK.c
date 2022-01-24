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
struct drm_device {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; struct drm_device drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  VGT_DRV_DISPLAY_READY ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  display_ready ; 
 scalar_t__ FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct drm_i915_private *dev_priv)
{
	struct drm_device *dev = &dev_priv->drm;

	FUNC8(dev_priv);
	FUNC10(dev_priv);

	/*
	 * Notify a valid surface after modesetting,
	 * when running inside a VM.
	 */
	if (FUNC18(dev_priv))
		FUNC2(FUNC19(display_ready), VGT_DRV_DISPLAY_READY);

	/* Reveal our presence to userspace */
	if (FUNC5(dev, 0) == 0) {
		FUNC7(dev_priv);
		FUNC11(dev_priv);

		/* Depends on sysfs having been initialized */
		FUNC9(dev_priv);
	} else
		FUNC0("Failed to register driver for userspace access!\n");

	if (FUNC1(dev_priv)) {
		/* Must be done after probing outputs */
		FUNC15(dev_priv);
		FUNC4();
	}

	if (FUNC3(dev_priv, 5))
		FUNC14(dev_priv);

	FUNC12(dev_priv);

	/*
	 * Some ports require correctly set-up hpd registers for detection to
	 * work properly (leading to ghost connected connector status), e.g. VGA
	 * on gm45.  Hence we can only set up the initial fbdev config after hpd
	 * irqs are fully enabled. We do it last so that the async config
	 * cannot run before the connectors are registered.
	 */
	FUNC13(dev);

	/*
	 * We need to coordinate the hotplugs with the asynchronous fbdev
	 * configuration, for which we use the fbdev->async_cookie.
	 */
	if (FUNC1(dev_priv))
		FUNC6(dev);

	FUNC16(dev_priv);
	FUNC17(&dev_priv->runtime_pm);
}