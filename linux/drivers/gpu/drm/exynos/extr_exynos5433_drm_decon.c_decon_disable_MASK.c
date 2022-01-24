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
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {int out_type; int first_win; int /*<<< orphan*/  dev; int /*<<< orphan*/ * planes; int /*<<< orphan*/  irq; int /*<<< orphan*/  te_irq; } ;

/* Variables and functions */
 int I80_HW_TRG ; 
 int WINDOWS_NR ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct decon_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct exynos_drm_crtc *crtc)
{
	struct decon_context *ctx = crtc->ctx;
	int i;

	if (!(ctx->out_type & I80_HW_TRG))
		FUNC4(ctx->te_irq);
	FUNC4(ctx->irq);

	/*
	 * We need to make sure that all windows are disabled before we
	 * suspend that connector. Otherwise we might try to scan from
	 * a destroyed buffer later.
	 */
	for (i = ctx->first_win; i < WINDOWS_NR; i++)
		FUNC0(crtc, &ctx->planes[i]);

	FUNC1(ctx);

	FUNC2(crtc, false);

	FUNC3(ctx->dev);
}