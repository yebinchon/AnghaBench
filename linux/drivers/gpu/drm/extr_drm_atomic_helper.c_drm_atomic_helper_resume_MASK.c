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
 int FUNC2 (struct drm_atomic_state*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

int FUNC5(struct drm_device *dev,
			     struct drm_atomic_state *state)
{
	struct drm_modeset_acquire_ctx ctx;
	int err;

	FUNC4(dev);

	FUNC0(dev, ctx, 0, err);

	err = FUNC2(state, &ctx);

	FUNC1(ctx, err);
	FUNC3(state);

	return err;
}