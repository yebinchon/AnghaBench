#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct fimd_context {int suspended; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  lcd_clk; int /*<<< orphan*/  crtc; TYPE_1__* driver_data; scalar_t__ regs; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;
struct TYPE_2__ {scalar_t__ has_shadowcon; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int WINCONx_ENWIN ; 
 unsigned int WINDOWS_NR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fimd_context*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fimd_context*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct exynos_drm_crtc *crtc)
{
	struct fimd_context *ctx = crtc->ctx;
	unsigned int win, ch_enabled = 0;

	/* Hardware is in unknown state, so ensure it gets enabled properly */
	FUNC8(ctx->dev);

	FUNC2(ctx->bus_clk);
	FUNC2(ctx->lcd_clk);

	/* Check if any channel is enabled. */
	for (win = 0; win < WINDOWS_NR; win++) {
		u32 val = FUNC10(ctx->regs + FUNC0(win));

		if (val & WINCONx_ENWIN) {
			FUNC6(ctx, win, false);

			if (ctx->driver_data->has_shadowcon)
				FUNC4(ctx, win,
								false);

			ch_enabled = 1;
		}
	}

	/* Wait for vsync, as disable channel takes effect at next vsync */
	if (ch_enabled) {
		ctx->suspended = false;

		FUNC5(ctx->crtc);
		FUNC7(ctx->crtc);
		FUNC3(ctx->crtc);

		ctx->suspended = true;
	}

	FUNC1(ctx->lcd_clk);
	FUNC1(ctx->bus_clk);

	FUNC9(ctx->dev);
}