#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_3__ reset; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* hpd_irq_setup ) (struct drm_i915_private*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_i915_private {TYPE_4__ gt; int /*<<< orphan*/  irq_lock; TYPE_1__ display; int /*<<< orphan*/  modeset_restore_state; struct drm_modeset_acquire_ctx reset_ctx; struct drm_device drm; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  I915_RESET_MODESET ; 
 int FUNC1 (struct drm_device*,struct drm_atomic_state*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_modeset_acquire_ctx*) ; 
 struct drm_atomic_state* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC17(struct drm_i915_private *dev_priv)
{
	struct drm_device *dev = &dev_priv->drm;
	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
	struct drm_atomic_state *state;
	int ret;

	/* reset doesn't touch the display */
	if (!FUNC16(I915_RESET_MODESET, &dev_priv->gt.reset.flags))
		return;

	state = FUNC6(&dev_priv->modeset_restore_state);
	if (!state)
		goto unlock;

	/* reset doesn't touch the display */
	if (!FUNC7(dev_priv)) {
		/* for testing only restore the display */
		ret = FUNC1(dev, state, ctx);
		if (ret)
			FUNC0("Restoring old state failed with %i\n", ret);
	} else {
		/*
		 * The display has been reset as well,
		 * so need a full re-initialization.
		 */
		FUNC11(dev_priv);
		FUNC10(dev);
		FUNC9(dev_priv);

		FUNC13(&dev_priv->irq_lock);
		if (dev_priv->display.hpd_irq_setup)
			dev_priv->display.hpd_irq_setup(dev_priv);
		FUNC14(&dev_priv->irq_lock);

		ret = FUNC1(dev, state, ctx);
		if (ret)
			FUNC0("Restoring old state failed with %i\n", ret);

		FUNC8(dev_priv);
	}

	FUNC3(state);
unlock:
	FUNC5(ctx);
	FUNC4(ctx);
	FUNC12(&dev->mode_config.mutex);

	FUNC2(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
}