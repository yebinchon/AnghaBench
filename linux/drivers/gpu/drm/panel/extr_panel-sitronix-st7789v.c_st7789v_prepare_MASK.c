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
struct st7789v {int /*<<< orphan*/  reset; int /*<<< orphan*/  power; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_ENTER_INVERT_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int MIPI_DCS_PIXEL_FMT_18BIT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_ADDRESS_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PIXEL_FORMAT ; 
 int /*<<< orphan*/  ST7789V_FRCTRL2_CMD ; 
 int /*<<< orphan*/  ST7789V_GCTRL_CMD ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ST7789V_LCMCTRL_CMD ; 
 int ST7789V_LCMCTRL_XBGR ; 
 int ST7789V_LCMCTRL_XMH ; 
 int ST7789V_LCMCTRL_XMX ; 
 int /*<<< orphan*/  ST7789V_NVGAMCTRL_CMD ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  ST7789V_PORCTRL_CMD ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int /*<<< orphan*/  ST7789V_PVGAMCTRL_CMD ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int) ; 
 int FUNC26 (int) ; 
 int FUNC27 (int) ; 
 int FUNC28 (int) ; 
 int FUNC29 (int) ; 
 int FUNC30 (int) ; 
 int FUNC31 (int) ; 
 int FUNC32 (int) ; 
 int FUNC33 (int) ; 
 int FUNC34 (int) ; 
 int FUNC35 (int) ; 
 int FUNC36 (int) ; 
 int FUNC37 (int) ; 
 int FUNC38 (int) ; 
 int FUNC39 (int) ; 
 int /*<<< orphan*/  ST7789V_PWCTRL1_CMD ; 
 int ST7789V_PWCTRL1_MAGIC ; 
 int FUNC40 (int) ; 
 int /*<<< orphan*/  ST7789V_RAMCTRL_CMD ; 
 int ST7789V_RAMCTRL_DM_RGB ; 
 int FUNC41 (int) ; 
 int ST7789V_RAMCTRL_MAGIC ; 
 int ST7789V_RAMCTRL_RM_RGB ; 
 int /*<<< orphan*/  ST7789V_RGBCTRL_CMD ; 
 int FUNC42 (int) ; 
 int ST7789V_RGBCTRL_HSYNC_HIGH ; 
 int ST7789V_RGBCTRL_PCLK_HIGH ; 
 int FUNC43 (int) ; 
 int FUNC44 (int) ; 
 int ST7789V_RGBCTRL_VSYNC_HIGH ; 
 int ST7789V_RGBCTRL_WO ; 
 int /*<<< orphan*/  FUNC45 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST7789V_VCOMS_CMD ; 
 int /*<<< orphan*/  ST7789V_VDVS_CMD ; 
 int /*<<< orphan*/  ST7789V_VDVVRHEN_CMD ; 
 int ST7789V_VDVVRHEN_CMDEN ; 
 int /*<<< orphan*/  ST7789V_VRHS_CMD ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC47 (int) ; 
 struct st7789v* FUNC48 (struct drm_panel*) ; 
 int FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (struct st7789v*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (struct st7789v*,int) ; 

__attribute__((used)) static int FUNC52(struct drm_panel *panel)
{
	struct st7789v *ctx = FUNC48(panel);
	int ret;

	ret = FUNC49(ctx->power);
	if (ret)
		return ret;

	FUNC46(ctx->reset, 1);
	FUNC47(30);
	FUNC46(ctx->reset, 0);
	FUNC47(120);

	FUNC45(ret, FUNC50(ctx, MIPI_DCS_EXIT_SLEEP_MODE));

	/* We need to wait 120ms after a sleep out command */
	FUNC47(120);

	FUNC45(ret, FUNC50(ctx,
						MIPI_DCS_SET_ADDRESS_MODE));
	FUNC45(ret, FUNC51(ctx, 0));

	FUNC45(ret, FUNC50(ctx,
						MIPI_DCS_SET_PIXEL_FORMAT));
	FUNC45(ret, FUNC51(ctx,
					     (MIPI_DCS_PIXEL_FMT_18BIT << 4) |
					     (MIPI_DCS_PIXEL_FMT_18BIT)));

	FUNC45(ret, FUNC50(ctx, ST7789V_PORCTRL_CMD));
	FUNC45(ret, FUNC51(ctx, 0xc));
	FUNC45(ret, FUNC51(ctx, 0xc));
	FUNC45(ret, FUNC51(ctx, 0));
	FUNC45(ret, FUNC51(ctx, FUNC18(3) |
					     FUNC19(3)));
	FUNC45(ret, FUNC51(ctx,
					     FUNC20(3) |
					     FUNC21(3)));

	FUNC45(ret, FUNC50(ctx, ST7789V_GCTRL_CMD));
	FUNC45(ret, FUNC51(ctx, FUNC1(5) |
					     FUNC0(3)));

	FUNC45(ret, FUNC50(ctx, ST7789V_VCOMS_CMD));
	FUNC45(ret, FUNC51(ctx, 0x2b));

	FUNC45(ret, FUNC50(ctx, ST7789V_LCMCTRL_CMD));
	FUNC45(ret, FUNC51(ctx, ST7789V_LCMCTRL_XMH |
					     ST7789V_LCMCTRL_XMX |
					     ST7789V_LCMCTRL_XBGR));

	FUNC45(ret, FUNC50(ctx, ST7789V_VDVVRHEN_CMD));
	FUNC45(ret, FUNC51(ctx, ST7789V_VDVVRHEN_CMDEN));

	FUNC45(ret, FUNC50(ctx, ST7789V_VRHS_CMD));
	FUNC45(ret, FUNC51(ctx, 0xf));

	FUNC45(ret, FUNC50(ctx, ST7789V_VDVS_CMD));
	FUNC45(ret, FUNC51(ctx, 0x20));

	FUNC45(ret, FUNC50(ctx, ST7789V_FRCTRL2_CMD));
	FUNC45(ret, FUNC51(ctx, 0xf));

	FUNC45(ret, FUNC50(ctx, ST7789V_PWCTRL1_CMD));
	FUNC45(ret, FUNC51(ctx, ST7789V_PWCTRL1_MAGIC));
	FUNC45(ret, FUNC51(ctx, FUNC39(2) |
					     FUNC38(2) |
					     FUNC40(1)));

	FUNC45(ret, FUNC50(ctx, ST7789V_PVGAMCTRL_CMD));
	FUNC45(ret, FUNC51(ctx, FUNC37(0xd)));
	FUNC45(ret, FUNC51(ctx, FUNC23(0xca)));
	FUNC45(ret, FUNC51(ctx, FUNC25(0xe)));
	FUNC45(ret, FUNC51(ctx, FUNC29(8)));
	FUNC45(ret, FUNC51(ctx, FUNC34(9)));
	FUNC45(ret, FUNC51(ctx, FUNC24(7)));
	FUNC45(ret, FUNC51(ctx, FUNC26(0x2d)));
	FUNC45(ret, FUNC51(ctx, FUNC27(0xb) |
					     FUNC28(3)));
	FUNC45(ret, FUNC51(ctx, FUNC30(0x3d)));
	FUNC45(ret, FUNC51(ctx, FUNC22(3) |
					     FUNC31(4)));
	FUNC45(ret, FUNC51(ctx, FUNC32(0xa)));
	FUNC45(ret, FUNC51(ctx, FUNC33(0xa)));
	FUNC45(ret, FUNC51(ctx, FUNC35(0x1b)));
	FUNC45(ret, FUNC51(ctx, FUNC36(0x28)));

	FUNC45(ret, FUNC50(ctx, ST7789V_NVGAMCTRL_CMD));
	FUNC45(ret, FUNC51(ctx, FUNC17(0xd)));
	FUNC45(ret, FUNC51(ctx, FUNC3(0xca)));
	FUNC45(ret, FUNC51(ctx, FUNC5(0xf)));
	FUNC45(ret, FUNC51(ctx, FUNC9(8)));
	FUNC45(ret, FUNC51(ctx, FUNC14(8)));
	FUNC45(ret, FUNC51(ctx, FUNC4(7)));
	FUNC45(ret, FUNC51(ctx, FUNC6(0x2e)));
	FUNC45(ret, FUNC51(ctx, FUNC7(0xc) |
					     FUNC8(5)));
	FUNC45(ret, FUNC51(ctx, FUNC10(0x40)));
	FUNC45(ret, FUNC51(ctx, FUNC2(3) |
					     FUNC11(4)));
	FUNC45(ret, FUNC51(ctx, FUNC12(9)));
	FUNC45(ret, FUNC51(ctx, FUNC13(0xb)));
	FUNC45(ret, FUNC51(ctx, FUNC15(0x1b)));
	FUNC45(ret, FUNC51(ctx, FUNC16(0x28)));

	FUNC45(ret, FUNC50(ctx, MIPI_DCS_ENTER_INVERT_MODE));

	FUNC45(ret, FUNC50(ctx, ST7789V_RAMCTRL_CMD));
	FUNC45(ret, FUNC51(ctx, ST7789V_RAMCTRL_DM_RGB |
					     ST7789V_RAMCTRL_RM_RGB));
	FUNC45(ret, FUNC51(ctx, FUNC41(3) |
					     ST7789V_RAMCTRL_MAGIC));

	FUNC45(ret, FUNC50(ctx, ST7789V_RGBCTRL_CMD));
	FUNC45(ret, FUNC51(ctx, ST7789V_RGBCTRL_WO |
					     FUNC43(2) |
					     ST7789V_RGBCTRL_VSYNC_HIGH |
					     ST7789V_RGBCTRL_HSYNC_HIGH |
					     ST7789V_RGBCTRL_PCLK_HIGH));
	FUNC45(ret, FUNC51(ctx, FUNC44(8)));
	FUNC45(ret, FUNC51(ctx, FUNC42(20)));

	return 0;
}