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
struct drm_crtc_state {int connectors_changed; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct drm_crtc_state*) ; 
 int FUNC1 (struct drm_crtc_state*) ; 
 int FUNC2 (struct drm_atomic_state*) ; 
 struct drm_crtc_state* FUNC3 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_atomic_state* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_atomic_state*) ; 

__attribute__((used)) static int FUNC6(struct drm_crtc *crtc,
			struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_atomic_state *state;
	struct drm_crtc_state *crtc_state;
	int ret;

	state = FUNC4(crtc->dev);
	if (!state)
		return -ENOMEM;

	state->acquire_ctx = ctx;

	crtc_state = FUNC3(state, crtc);
	if (FUNC0(crtc_state)) {
		ret = FUNC1(crtc_state);
		goto out;
	}

	crtc_state->connectors_changed = true;

	ret = FUNC2(state);
out:
	FUNC5(state);

	return ret;
}