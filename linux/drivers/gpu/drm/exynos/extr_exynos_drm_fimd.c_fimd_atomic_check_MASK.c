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
typedef  int u32 ;
struct fimd_context {int clkdiv; int /*<<< orphan*/  dev; int /*<<< orphan*/  lcd_clk; scalar_t__ i80_if; } ;
struct exynos_drm_crtc {struct fimd_context* ctx; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc_state {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct exynos_drm_crtc *crtc,
		struct drm_crtc_state *state)
{
	struct drm_display_mode *mode = &state->adjusted_mode;
	struct fimd_context *ctx = crtc->ctx;
	unsigned long ideal_clk, lcd_rate;
	u32 clkdiv;

	if (mode->clock == 0) {
		FUNC1(ctx->dev, "Mode has zero clock value.\n");
		return -EINVAL;
	}

	ideal_clk = mode->clock * 1000;

	if (ctx->i80_if) {
		/*
		 * The frame done interrupt should be occurred prior to the
		 * next TE signal.
		 */
		ideal_clk *= 2;
	}

	lcd_rate = FUNC2(ctx->lcd_clk);
	if (2 * lcd_rate < ideal_clk) {
		FUNC1(ctx->dev,
			      "sclk_fimd clock too low(%lu) for requested pixel clock(%lu)\n",
			      lcd_rate, ideal_clk);
		return -EINVAL;
	}

	/* Find the clock divider value that gets us closest to ideal_clk */
	clkdiv = FUNC0(lcd_rate, ideal_clk);
	if (clkdiv >= 0x200) {
		FUNC1(ctx->dev, "requested pixel clock(%lu) too low\n",
			      ideal_clk);
		return -EINVAL;
	}

	ctx->clkdiv = (clkdiv < 0x100) ? clkdiv : 0xff;

	return 0;
}