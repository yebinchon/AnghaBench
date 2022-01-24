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
struct videomode {unsigned int pixelclock; int flags; int vactive; int /*<<< orphan*/  hactive; int /*<<< orphan*/  vfront_porch; int /*<<< orphan*/  vback_porch; int /*<<< orphan*/  vsync_len; int /*<<< orphan*/  hfront_porch; int /*<<< orphan*/  hback_porch; int /*<<< orphan*/  hsync_len; int /*<<< orphan*/  member_0; } ;
struct mtk_dpi_yc_limit {int c_bottom; int c_top; int y_bottom; int y_top; } ;
struct mtk_dpi_sync_param {int shift_half_line; int /*<<< orphan*/  front_porch; int /*<<< orphan*/  back_porch; int /*<<< orphan*/  sync_width; int /*<<< orphan*/  member_0; } ;
struct mtk_dpi_polarities {void* vsync_pol; void* hsync_pol; void* de_pol; void* ck_pol; } ;
struct mtk_dpi {int /*<<< orphan*/  color_format; int /*<<< orphan*/  yc_map; int /*<<< orphan*/  channel_swap; int /*<<< orphan*/  bit_num; int /*<<< orphan*/  dev; int /*<<< orphan*/  pixel_clk; int /*<<< orphan*/  tvd_clk; TYPE_1__* conf; } ;
struct drm_display_mode {int flags; int /*<<< orphan*/  clock; } ;
struct TYPE_2__ {unsigned int (* cal_factor ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DISPLAY_FLAGS_HSYNC_HIGH ; 
 int DISPLAY_FLAGS_INTERLACED ; 
 int DISPLAY_FLAGS_VSYNC_HIGH ; 
 int DRM_MODE_FLAG_3D_MASK ; 
 void* MTK_DPI_POLARITY_FALLING ; 
 void* MTK_DPI_POLARITY_RISING ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*,struct videomode*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_dpi*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_dpi*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_dpi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_dpi*,struct mtk_dpi_yc_limit*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_dpi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_dpi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mtk_dpi*) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_dpi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mtk_dpi*,struct mtk_dpi_sync_param*) ; 
 int /*<<< orphan*/  FUNC13 (struct mtk_dpi*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mtk_dpi*,struct mtk_dpi_polarities*) ; 
 int /*<<< orphan*/  FUNC15 (struct mtk_dpi*,struct mtk_dpi_sync_param*) ; 
 int /*<<< orphan*/  FUNC16 (struct mtk_dpi*,struct mtk_dpi_sync_param*) ; 
 int /*<<< orphan*/  FUNC17 (struct mtk_dpi*,struct mtk_dpi_sync_param*) ; 
 int /*<<< orphan*/  FUNC18 (struct mtk_dpi*,struct mtk_dpi_sync_param*) ; 
 int /*<<< orphan*/  FUNC19 (struct mtk_dpi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mtk_dpi*,int) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct mtk_dpi *dpi,
				    struct drm_display_mode *mode)
{
	struct mtk_dpi_yc_limit limit;
	struct mtk_dpi_polarities dpi_pol;
	struct mtk_dpi_sync_param hsync;
	struct mtk_dpi_sync_param vsync_lodd = { 0 };
	struct mtk_dpi_sync_param vsync_leven = { 0 };
	struct mtk_dpi_sync_param vsync_rodd = { 0 };
	struct mtk_dpi_sync_param vsync_reven = { 0 };
	struct videomode vm = { 0 };
	unsigned long pll_rate;
	unsigned int factor;

	/* let pll_rate can fix the valid range of tvdpll (1G~2GHz) */
	factor = dpi->conf->cal_factor(mode->clock);
	FUNC3(mode, &vm);
	pll_rate = vm.pixelclock * factor;

	FUNC2(dpi->dev, "Want PLL %lu Hz, pixel clock %lu Hz\n",
		pll_rate, vm.pixelclock);

	FUNC1(dpi->tvd_clk, pll_rate);
	pll_rate = FUNC0(dpi->tvd_clk);

	vm.pixelclock = pll_rate / factor;
	FUNC1(dpi->pixel_clk, vm.pixelclock);
	vm.pixelclock = FUNC0(dpi->pixel_clk);

	FUNC2(dpi->dev, "Got  PLL %lu Hz, pixel clock %lu Hz\n",
		pll_rate, vm.pixelclock);

	limit.c_bottom = 0x0010;
	limit.c_top = 0x0FE0;
	limit.y_bottom = 0x0010;
	limit.y_top = 0x0FE0;

	dpi_pol.ck_pol = MTK_DPI_POLARITY_FALLING;
	dpi_pol.de_pol = MTK_DPI_POLARITY_RISING;
	dpi_pol.hsync_pol = vm.flags & DISPLAY_FLAGS_HSYNC_HIGH ?
			    MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
	dpi_pol.vsync_pol = vm.flags & DISPLAY_FLAGS_VSYNC_HIGH ?
			    MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
	hsync.sync_width = vm.hsync_len;
	hsync.back_porch = vm.hback_porch;
	hsync.front_porch = vm.hfront_porch;
	hsync.shift_half_line = false;
	vsync_lodd.sync_width = vm.vsync_len;
	vsync_lodd.back_porch = vm.vback_porch;
	vsync_lodd.front_porch = vm.vfront_porch;
	vsync_lodd.shift_half_line = false;

	if (vm.flags & DISPLAY_FLAGS_INTERLACED &&
	    mode->flags & DRM_MODE_FLAG_3D_MASK) {
		vsync_leven = vsync_lodd;
		vsync_rodd = vsync_lodd;
		vsync_reven = vsync_lodd;
		vsync_leven.shift_half_line = true;
		vsync_reven.shift_half_line = true;
	} else if (vm.flags & DISPLAY_FLAGS_INTERLACED &&
		   !(mode->flags & DRM_MODE_FLAG_3D_MASK)) {
		vsync_leven = vsync_lodd;
		vsync_leven.shift_half_line = true;
	} else if (!(vm.flags & DISPLAY_FLAGS_INTERLACED) &&
		   mode->flags & DRM_MODE_FLAG_3D_MASK) {
		vsync_rodd = vsync_lodd;
	}
	FUNC20(dpi, true);
	FUNC14(dpi, &dpi_pol);

	FUNC12(dpi, &hsync);
	FUNC16(dpi, &vsync_lodd);
	FUNC18(dpi, &vsync_rodd);
	FUNC15(dpi, &vsync_leven);
	FUNC17(dpi, &vsync_reven);

	FUNC5(dpi, !!(mode->flags & DRM_MODE_FLAG_3D_MASK));
	FUNC13(dpi, !!(vm.flags &
					 DISPLAY_FLAGS_INTERLACED));
	if (vm.flags & DISPLAY_FLAGS_INTERLACED)
		FUNC11(dpi, vm.hactive, vm.vactive >> 1);
	else
		FUNC11(dpi, vm.hactive, vm.vactive);

	FUNC7(dpi, &limit);
	FUNC6(dpi, dpi->bit_num);
	FUNC8(dpi, dpi->channel_swap);
	FUNC19(dpi, dpi->yc_map);
	FUNC9(dpi, dpi->color_format);
	FUNC4(dpi);
	FUNC10(dpi);
	FUNC20(dpi, false);

	return 0;
}