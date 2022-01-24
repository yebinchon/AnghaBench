#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {TYPE_1__ reset; } ;
struct TYPE_7__ {int /*<<< orphan*/  pending_fb_pin; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct drm_i915_private {struct drm_atomic_state* modeset_restore_state; TYPE_4__ gt; TYPE_2__ gpu_error; struct drm_modeset_acquire_ctx reset_ctx; struct drm_device drm; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  force_reset_modeset_test; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EDEADLK ; 
 int /*<<< orphan*/  I915_RESET_MODESET ; 
 scalar_t__ FUNC2 (struct drm_atomic_state*) ; 
 int FUNC3 (struct drm_atomic_state*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 
 struct drm_atomic_state* FUNC6 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC10 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 TYPE_5__ i915_modparams ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC17(struct drm_i915_private *dev_priv)
{
	struct drm_device *dev = &dev_priv->drm;
	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
	struct drm_atomic_state *state;
	int ret;

	/* reset doesn't touch the display */
	if (!i915_modparams.force_reset_modeset_test &&
	    !FUNC11(dev_priv))
		return;

	/* We have a modeset vs reset deadlock, defensively unbreak it. */
	FUNC14(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
	FUNC15();
	FUNC16(&dev_priv->gt.reset.flags, I915_RESET_MODESET);

	if (FUNC4(&dev_priv->gpu_error.pending_fb_pin)) {
		FUNC0("Modeset potentially stuck, unbreaking through wedging\n");
		FUNC12(&dev_priv->gt);
	}

	/*
	 * Need mode_config.mutex so that we don't
	 * trample ongoing ->detect() and whatnot.
	 */
	FUNC13(&dev->mode_config.mutex);
	FUNC8(ctx, 0);
	while (1) {
		ret = FUNC10(dev, ctx);
		if (ret != -EDEADLK)
			break;

		FUNC9(ctx);
	}
	/*
	 * Disabling the crtcs gracefully seems nicer. Also the
	 * g33 docs say we should at least disable all the planes.
	 */
	state = FUNC6(dev, ctx);
	if (FUNC2(state)) {
		ret = FUNC3(state);
		FUNC1("Duplicating state failed with %i\n", ret);
		return;
	}

	ret = FUNC5(dev, ctx);
	if (ret) {
		FUNC1("Suspending crtc's failed with %i\n", ret);
		FUNC7(state);
		return;
	}

	dev_priv->modeset_restore_state = state;
	state->acquire_ctx = ctx;
}