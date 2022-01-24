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
struct mixer_context {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXR_BIT_POWERED ; 
 int /*<<< orphan*/  MXR_BIT_VSYNC ; 
 int /*<<< orphan*/  MXR_INT_CLEAR_VSYNC ; 
 int /*<<< orphan*/  MXR_INT_EN ; 
 int /*<<< orphan*/  MXR_INT_EN_VSYNC ; 
 int /*<<< orphan*/  MXR_INT_STATUS ; 
 int /*<<< orphan*/  MXR_STATUS ; 
 int /*<<< orphan*/  MXR_STATUS_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct exynos_drm_crtc *crtc)
{
	struct mixer_context *ctx = crtc->ctx;

	if (FUNC8(MXR_BIT_POWERED, &ctx->flags))
		return;

	FUNC6(ctx->dev);

	FUNC0(crtc, true);

	FUNC2(ctx);

	FUNC4(ctx, MXR_STATUS, ~0, MXR_STATUS_SOFT_RESET);

	if (FUNC8(MXR_BIT_VSYNC, &ctx->flags)) {
		FUNC4(ctx, MXR_INT_STATUS, ~0,
					MXR_INT_CLEAR_VSYNC);
		FUNC4(ctx, MXR_INT_EN, ~0, MXR_INT_EN_VSYNC);
	}
	FUNC5(ctx);

	FUNC1(ctx);

	FUNC3(ctx);

	FUNC7(MXR_BIT_POWERED, &ctx->flags);
}