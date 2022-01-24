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
struct fimd_context {int suspended; int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/ * planes; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;

/* Variables and functions */
 scalar_t__ VIDCON0 ; 
 int WINDOWS_NR ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct exynos_drm_crtc *crtc)
{
	struct fimd_context *ctx = crtc->ctx;
	int i;

	if (ctx->suspended)
		return;

	/*
	 * We need to make sure that all windows are disabled before we
	 * suspend that connector. Otherwise we might try to scan from
	 * a destroyed buffer later.
	 */
	for (i = 0; i < WINDOWS_NR; i++)
		FUNC0(crtc, &ctx->planes[i]);

	FUNC2(crtc);
	FUNC3(crtc);
	FUNC1(crtc);

	FUNC5(0, ctx->regs + VIDCON0);

	FUNC4(ctx->dev);
	ctx->suspended = true;
}