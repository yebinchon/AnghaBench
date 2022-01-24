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
struct TYPE_4__ {int /*<<< orphan*/  (* hpd_irq_setup ) (struct drm_i915_private*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  irq_lock; TYPE_2__ display; TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC29 (struct drm_device*) ; 

__attribute__((used)) static int FUNC30(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC29(dev);
	int ret;

	FUNC1(&dev_priv->runtime_pm);
	FUNC23(dev_priv);

	FUNC8(dev_priv);

	ret = FUNC9(dev_priv);
	if (ret)
		FUNC0("failed to re-enable GGTT\n");

	FUNC24(&dev_priv->drm.struct_mutex);
	FUNC6(dev_priv);
	FUNC5(dev_priv);
	FUNC25(&dev_priv->drm.struct_mutex);

	FUNC11(dev_priv);

	FUNC10(dev_priv);
	FUNC21(dev_priv);

	FUNC17(dev_priv);

	/*
	 * Interrupts have to be enabled before any batches are run. If not the
	 * GPU will hang. i915_gem_init_hw() will initiate batches to
	 * update/restore the context.
	 *
	 * drm_mode_config_reset() needs AUX interrupts.
	 *
	 * Modeset enabling in intel_modeset_init_hw() also needs working
	 * interrupts.
	 */
	FUNC22(dev_priv);

	FUNC3(dev);

	FUNC7(dev_priv);

	FUNC18(dev);
	FUNC16(dev_priv);

	FUNC26(&dev_priv->irq_lock);
	if (dev_priv->display.hpd_irq_setup)
		dev_priv->display.hpd_irq_setup(dev_priv);
	FUNC27(&dev_priv->irq_lock);

	FUNC13(dev_priv);

	FUNC12(dev);

	FUNC2(dev);

	/*
	 * ... but also need to make sure that hotplug processing
	 * doesn't cause havoc. Like in the driver load code we don't
	 * bother with the tiny race here where we might lose hotplug
	 * notifications.
	 * */
	FUNC15(dev_priv);

	FUNC19(dev_priv);

	FUNC14(dev, FBINFO_STATE_RUNNING, false);

	FUNC20(dev_priv);

	FUNC4(&dev_priv->runtime_pm);

	return 0;
}