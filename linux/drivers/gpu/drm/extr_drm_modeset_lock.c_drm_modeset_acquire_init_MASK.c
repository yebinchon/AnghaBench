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
typedef  int uint32_t ;
struct drm_modeset_acquire_ctx {int interruptible; int /*<<< orphan*/  locked; int /*<<< orphan*/  ww_ctx; } ;

/* Variables and functions */
 int DRM_MODESET_ACQUIRE_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crtc_ww_class ; 
 int /*<<< orphan*/  FUNC1 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_modeset_acquire_ctx *ctx,
		uint32_t flags)
{
	FUNC1(ctx, 0, sizeof(*ctx));
	FUNC2(&ctx->ww_ctx, &crtc_ww_class);
	FUNC0(&ctx->locked);

	if (flags & DRM_MODESET_ACQUIRE_INTERRUPTIBLE)
		ctx->interruptible = true;
}