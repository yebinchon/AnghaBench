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
struct decon_context {int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECON_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  STANDALONE_UPDATE_F ; 
 int /*<<< orphan*/  WINCONx_ENWIN_F ; 
 int WINDOWS_NR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decon_clks_name ; 
 int /*<<< orphan*/  FUNC4 (struct decon_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct decon_context*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct exynos_drm_crtc *crtc)
{
	struct decon_context *ctx = crtc->ctx;
	int win, i, ret;

	for (i = 0; i < FUNC0(decon_clks_name); i++) {
		ret = FUNC3(ctx->clks[i]);
		if (ret < 0)
			goto err;
	}

	FUNC5(ctx, true);
	for (win = 0; win < WINDOWS_NR; win++)
		FUNC4(ctx, FUNC1(win), WINCONx_ENWIN_F, 0);
	FUNC5(ctx, false);

	FUNC4(ctx, DECON_UPDATE, STANDALONE_UPDATE_F, ~0);

	/* TODO: wait for possible vsync */
	FUNC6(50);

err:
	while (--i >= 0)
		FUNC2(ctx->clks[i]);
}