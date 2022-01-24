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
struct drm_mode_set {struct drm_crtc* crtc; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct drm_mode_set*,struct drm_atomic_state*) ; 
 int FUNC1 (struct drm_atomic_state*) ; 
 struct drm_atomic_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_atomic_state*) ; 
 int FUNC4 (struct drm_atomic_state*,int) ; 

int FUNC5(struct drm_mode_set *set,
				 struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_atomic_state *state;
	struct drm_crtc *crtc = set->crtc;
	int ret = 0;

	state = FUNC2(crtc->dev);
	if (!state)
		return -ENOMEM;

	state->acquire_ctx = ctx;
	ret = FUNC0(set, state);
	if (ret != 0)
		goto fail;

	ret = FUNC4(state, true);
	if (ret)
		return ret;

	ret = FUNC1(state);

fail:
	FUNC3(state);
	return ret;
}