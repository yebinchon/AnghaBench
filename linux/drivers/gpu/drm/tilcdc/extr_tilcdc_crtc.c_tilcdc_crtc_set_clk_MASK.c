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
struct tilcdc_drm_private {int rev; int /*<<< orphan*/  clk; } ;
struct tilcdc_crtc {unsigned long lcd_fck_rate; } ;
struct drm_device {int /*<<< orphan*/  dev; struct tilcdc_drm_private* dev_private; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc {TYPE_1__ mode; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int,unsigned int) ; 
 unsigned int FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  LCDC_CLK_ENABLE_REG ; 
 int /*<<< orphan*/  LCDC_CTRL_REG ; 
 int LCDC_RASTER_MODE ; 
 int LCDC_V2_CORE_CLK_EN ; 
 int LCDC_V2_DMA_CLK_EN ; 
 int LCDC_V2_LIDD_CLK_EN ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 struct tilcdc_crtc* FUNC10 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct tilcdc_drm_private *priv = dev->dev_private;
	struct tilcdc_crtc *tilcdc_crtc = FUNC10(crtc);
	unsigned long clk_rate, real_rate, req_rate;
	unsigned int clkdiv;
	int ret;

	clkdiv = 2; /* first try using a standard divider of 2 */

	/* mode.clock is in KHz, set_rate wants parameter in Hz */
	req_rate = crtc->mode.clock * 1000;

	ret = FUNC4(priv->clk, req_rate * clkdiv);
	clk_rate = FUNC3(priv->clk);
	if (ret < 0 || FUNC7(req_rate, clk_rate) > 5) {
		/*
		 * If we fail to set the clock rate (some architectures don't
		 * use the common clock framework yet and may not implement
		 * all the clk API calls for every clock), try the next best
		 * thing: adjusting the clock divider, unless clk_get_rate()
		 * failed as well.
		 */
		if (!clk_rate) {
			/* Nothing more we can do. Just bail out. */
			FUNC5(dev->dev,
				"failed to set the pixel clock - unable to read current lcdc clock rate\n");
			return;
		}

		clkdiv = FUNC1(clk_rate, req_rate);

		/*
		 * Emit a warning if the real clock rate resulting from the
		 * calculated divider differs much from the requested rate.
		 *
		 * 5% is an arbitrary value - LCDs are usually quite tolerant
		 * about pixel clock rates.
		 */
		real_rate = clkdiv * req_rate;

		if (FUNC7(clk_rate, real_rate) > 5) {
			FUNC6(dev->dev,
				 "effective pixel clock rate (%luHz) differs from the calculated rate (%luHz)\n",
				 clk_rate, real_rate);
		}
	}

	tilcdc_crtc->lcd_fck_rate = clk_rate;

	FUNC0("lcd_clk=%u, mode clock=%d, div=%u",
	    tilcdc_crtc->lcd_fck_rate, crtc->mode.clock, clkdiv);

	/* Configure the LCD clock divisor. */
	FUNC9(dev, LCDC_CTRL_REG, FUNC2(clkdiv) |
		     LCDC_RASTER_MODE);

	if (priv->rev == 2)
		FUNC8(dev, LCDC_CLK_ENABLE_REG,
				LCDC_V2_DMA_CLK_EN | LCDC_V2_LIDD_CLK_EN |
				LCDC_V2_CORE_CLK_EN);
}