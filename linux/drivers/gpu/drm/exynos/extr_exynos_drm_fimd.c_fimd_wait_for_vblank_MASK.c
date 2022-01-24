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
struct fimd_context {int /*<<< orphan*/  dev; int /*<<< orphan*/  wait_vsync_event; int /*<<< orphan*/  wait_vsync_queue; scalar_t__ suspended; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct exynos_drm_crtc *crtc)
{
	struct fimd_context *ctx = crtc->ctx;

	if (ctx->suspended)
		return;

	FUNC2(&ctx->wait_vsync_event, 1);

	/*
	 * wait for FIMD to signal VSYNC interrupt or return after
	 * timeout which is set to 50ms (refresh rate of 20).
	 */
	if (!FUNC3(ctx->wait_vsync_queue,
				!FUNC1(&ctx->wait_vsync_event),
				HZ/20))
		FUNC0(ctx->dev, "vblank wait timed out.\n");
}