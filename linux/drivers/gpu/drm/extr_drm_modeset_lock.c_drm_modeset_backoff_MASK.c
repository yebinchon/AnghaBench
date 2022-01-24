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
struct drm_modeset_lock {int dummy; } ;
struct drm_modeset_acquire_ctx {int /*<<< orphan*/  interruptible; struct drm_modeset_lock* contended; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_modeset_acquire_ctx*) ; 
 int FUNC2 (struct drm_modeset_lock*,struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_modeset_lock *contended = ctx->contended;

	ctx->contended = NULL;

	if (FUNC0(!contended))
		return 0;

	FUNC1(ctx);

	return FUNC2(contended, ctx, ctx->interruptible, true);
}