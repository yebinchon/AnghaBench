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
struct mixer_context {int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXR_BIT_POWERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mixer_context*) ; 
 scalar_t__ FUNC2 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct exynos_drm_crtc *crtc)
{
	struct mixer_context *ctx = crtc->ctx;

	if (!FUNC3(MXR_BIT_POWERED, &ctx->flags))
		return;

	if (FUNC2(ctx))
		FUNC0(ctx->dev, "timeout waiting for VSYNC\n");
	FUNC1(ctx);
}