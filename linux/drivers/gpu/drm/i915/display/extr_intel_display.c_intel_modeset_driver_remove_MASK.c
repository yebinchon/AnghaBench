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
struct TYPE_2__ {int /*<<< orphan*/  free_list; int /*<<< orphan*/  free_work; } ;
struct drm_i915_private {int /*<<< orphan*/  modeset_wq; TYPE_1__ atomic_helper; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC16 (struct drm_device*) ; 

void FUNC17(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC16(dev);

	FUNC5(dev_priv->modeset_wq);

	FUNC4(&dev_priv->atomic_helper.free_work);
	FUNC0(!FUNC15(&dev_priv->atomic_helper.free_list));

	/*
	 * Interrupts and polling as the first thing to avoid creating havoc.
	 * Too much stuff here (turning of connectors, ...) would
	 * experience fancy races otherwise.
	 */
	FUNC12(dev_priv);

	/*
	 * Due to the hpd irq storm handling the hotplug work can re-arm the
	 * poll handlers. Hence disable polling after hpd handling is shut down.
	 */
	FUNC11(dev);

	/* poll work can call into fbdev, hence clean that up afterwards */
	FUNC8(dev_priv);

	FUNC14();

	FUNC7(dev_priv);

	/* flush any delayed tasks or pending work */
	FUNC3();

	FUNC10(dev_priv);

	FUNC2(dev);

	FUNC13(dev_priv);

	FUNC9(dev_priv);

	FUNC1(dev_priv->modeset_wq);

	FUNC6(dev_priv);
}