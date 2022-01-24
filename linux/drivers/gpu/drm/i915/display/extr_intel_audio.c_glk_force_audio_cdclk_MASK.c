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
struct TYPE_6__ {int /*<<< orphan*/  connection_mutex; } ;
struct TYPE_8__ {TYPE_2__ mode_config; } ;
struct drm_i915_private {TYPE_4__ drm; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_5__ {int force_min_cdclk_changed; int force_min_cdclk; } ;
struct TYPE_7__ {TYPE_1__ cdclk; } ;

/* Variables and functions */
 int EDEADLK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct drm_atomic_state*) ; 
 struct drm_atomic_state* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct drm_modeset_acquire_ctx*) ; 
 TYPE_3__* FUNC10 (struct drm_atomic_state*) ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv,
				  bool enable)
{
	struct drm_modeset_acquire_ctx ctx;
	struct drm_atomic_state *state;
	int ret;

	FUNC6(&ctx, 0);
	state = FUNC2(&dev_priv->drm);
	if (FUNC0(!state))
		return;

	state->acquire_ctx = &ctx;

retry:
	FUNC10(state)->cdclk.force_min_cdclk_changed = true;
	FUNC10(state)->cdclk.force_min_cdclk =
		enable ? 2 * 96000 : 0;

	/*
	 * Protects dev_priv->cdclk.force_min_cdclk
	 * Need to lock this here in case we have no active pipes
	 * and thus wouldn't lock it during the commit otherwise.
	 */
	ret = FUNC9(&dev_priv->drm.mode_config.connection_mutex,
			       &ctx);
	if (!ret)
		ret = FUNC1(state);

	if (ret == -EDEADLK) {
		FUNC3(state);
		FUNC7(&ctx);
		goto retry;
	}

	FUNC0(ret);

	FUNC4(state);

	FUNC8(&ctx);
	FUNC5(&ctx);
}