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
struct mixer_context {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; int /*<<< orphan*/ * planes; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;

/* Variables and functions */
 int MIXER_WIN_NR ; 
 int /*<<< orphan*/  MXR_BIT_POWERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct exynos_drm_crtc *crtc)
{
	struct mixer_context *ctx = crtc->ctx;
	int i;

	if (!FUNC6(MXR_BIT_POWERED, &ctx->flags))
		return;

	FUNC4(ctx);
	FUNC3(ctx);

	for (i = 0; i < MIXER_WIN_NR; i++)
		FUNC2(crtc, &ctx->planes[i]);

	FUNC1(crtc, false);

	FUNC5(ctx->dev);

	FUNC0(MXR_BIT_POWERED, &ctx->flags);
}