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
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_modeset_acquire_ctx,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_modeset_acquire_ctx,int) ; 
 int EINVAL ; 
 struct drm_atomic_state* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct drm_atomic_state*) ; 
 int FUNC4 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 
 struct drm_atomic_state* FUNC5 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_atomic_state*) ; 

struct drm_atomic_state *FUNC7(struct drm_device *dev)
{
	struct drm_modeset_acquire_ctx ctx;
	struct drm_atomic_state *state;
	int err;

	/* This can never be returned, but it makes the compiler happy */
	state = FUNC2(-EINVAL);

	FUNC0(dev, ctx, 0, err);

	state = FUNC5(dev, &ctx);
	if (FUNC3(state))
		goto unlock;

	err = FUNC4(dev, &ctx);
	if (err < 0) {
		FUNC6(state);
		state = FUNC2(err);
		goto unlock;
	}

unlock:
	FUNC1(ctx, err);
	if (err)
		return FUNC2(err);

	return state;
}