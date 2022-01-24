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
struct fimd_context {int suspended; int /*<<< orphan*/  crtc; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  dev; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct exynos_drm_crtc *crtc)
{
	struct fimd_context *ctx = crtc->ctx;

	if (!ctx->suspended)
		return;

	ctx->suspended = false;

	FUNC2(ctx->dev);

	/* if vblank was enabled status, enable it again. */
	if (FUNC3(0, &ctx->irq_flags))
		FUNC1(ctx->crtc);

	FUNC0(ctx->crtc);
}