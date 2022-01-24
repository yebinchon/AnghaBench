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
struct drm_modeset_acquire_ctx {int /*<<< orphan*/  ww_ctx; } ;
struct drm_mode_config {int acquire_ctx; int /*<<< orphan*/  mutex; } ;
struct drm_device {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 int EDEADLK ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC4 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_modeset_acquire_ctx*) ; 
 struct drm_modeset_acquire_ctx* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_device *dev)
{
	struct drm_mode_config *config = &dev->mode_config;
	struct drm_modeset_acquire_ctx *ctx;
	int ret;

	ctx = FUNC7(sizeof(*ctx), GFP_KERNEL | __GFP_NOFAIL);
	if (FUNC0(!ctx))
		return;

	FUNC8(&config->mutex);

	FUNC2(ctx, 0);

retry:
	ret = FUNC4(dev, ctx);
	if (ret < 0) {
		if (ret == -EDEADLK) {
			FUNC3(ctx);
			goto retry;
		}

		FUNC1(ctx);
		FUNC6(ctx);
		return;
	}
	FUNC9(&ctx->ww_ctx);

	FUNC0(config->acquire_ctx);

	/*
	 * We hold the locks now, so it is safe to stash the acquisition
	 * context for drm_modeset_unlock_all().
	 */
	config->acquire_ctx = ctx;

	FUNC5(dev);
}