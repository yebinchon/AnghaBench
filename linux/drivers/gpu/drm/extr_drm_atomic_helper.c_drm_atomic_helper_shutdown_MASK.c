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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_modeset_acquire_ctx,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_modeset_acquire_ctx,int) ; 
 int FUNC3 (struct drm_device*,struct drm_modeset_acquire_ctx*) ; 

void FUNC4(struct drm_device *dev)
{
	struct drm_modeset_acquire_ctx ctx;
	int ret;

	FUNC1(dev, ctx, 0, ret);

	ret = FUNC3(dev, &ctx);
	if (ret)
		FUNC0("Disabling all crtc's during unload failed with %i\n", ret);

	FUNC2(ctx, ret);
}