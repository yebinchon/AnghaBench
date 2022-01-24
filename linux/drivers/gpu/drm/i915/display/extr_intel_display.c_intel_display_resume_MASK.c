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
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_i915_private {struct drm_atomic_state* modeset_restore_state; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EDEADLK ; 
 int FUNC1 (struct drm_device*,struct drm_atomic_state*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC7 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC9 (struct drm_device*) ; 

void FUNC10(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC9(dev);
	struct drm_atomic_state *state = dev_priv->modeset_restore_state;
	struct drm_modeset_acquire_ctx ctx;
	int ret;

	dev_priv->modeset_restore_state = NULL;
	if (state)
		state->acquire_ctx = &ctx;

	FUNC4(&ctx, 0);

	while (1) {
		ret = FUNC7(dev, &ctx);
		if (ret != -EDEADLK)
			break;

		FUNC5(&ctx);
	}

	if (!ret)
		ret = FUNC1(dev, state, &ctx);

	FUNC8(dev_priv);
	FUNC6(&ctx);
	FUNC3(&ctx);

	if (ret)
		FUNC0("Restoring old state failed with %i\n", ret);
	if (state)
		FUNC2(state);
}