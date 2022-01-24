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
struct mdfld_dsi_dpi_timing {int hsync_count; int hbp_count; int hfp_count; int hactive_count; int vsync_count; int vbp_count; int vfp_count; } ;
struct mdfld_dsi_config {int lane_count; int channel_num; int bpp; int video_mode; struct drm_display_mode* mode; struct drm_device* dev; } ;
struct drm_display_mode {int vtotal; int htotal; int vdisplay; int hdisplay; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DSI_DPI_COLOR_FORMAT_RGB565 ; 
 int DSI_DPI_COLOR_FORMAT_RGB666 ; 
 int DSI_DPI_COLOR_FORMAT_RGB888 ; 
 int DSI_DPI_COMPLETE_LAST_LINE ; 
 int DSI_DPI_TIMING_MASK ; 
 int DSI_DPI_VIRT_CHANNEL_OFFSET ; 
 int DSI_HS_TX_TIMEOUT_MASK ; 
 int DSI_LP_RX_TIMEOUT_MASK ; 
 int DSI_RESET_TIMER_MASK ; 
 int DSI_TURN_AROUND_TIMEOUT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ TC35876X ; 
 int /*<<< orphan*/  FUNC26 (struct drm_display_mode*,struct mdfld_dsi_dpi_timing*,int,int) ; 
 scalar_t__ FUNC27 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_device*,int /*<<< orphan*/ ) ; 

void FUNC29(struct mdfld_dsi_config *dsi_config,
								int pipe)
{
	struct drm_device *dev = dsi_config->dev;
	int lane_count = dsi_config->lane_count;
	struct mdfld_dsi_dpi_timing dpi_timing;
	struct drm_display_mode *mode = dsi_config->mode;
	u32 val;

	/*un-ready device*/
	FUNC24(FUNC3(pipe), 0, 0, 0);

	/*init dsi adapter before kicking off*/
	FUNC25(FUNC2(pipe), 0x00000018);

	/*enable all interrupts*/
	FUNC25(FUNC16(pipe), 0xffffffff);

	/*set up func_prg*/
	val = lane_count;
	val |= dsi_config->channel_num << DSI_DPI_VIRT_CHANNEL_OFFSET;

	switch (dsi_config->bpp) {
	case 16:
		val |= DSI_DPI_COLOR_FORMAT_RGB565;
		break;
	case 18:
		val |= DSI_DPI_COLOR_FORMAT_RGB666;
		break;
	case 24:
		val |= DSI_DPI_COLOR_FORMAT_RGB888;
		break;
	default:
		FUNC0("unsupported color format, bpp = %d\n",
							dsi_config->bpp);
	}
	FUNC25(FUNC7(pipe), val);

	FUNC25(FUNC14(pipe),
			(mode->vtotal * mode->htotal * dsi_config->bpp /
				(8 * lane_count)) & DSI_HS_TX_TIMEOUT_MASK);
	FUNC25(FUNC18(pipe),
				0xffff & DSI_LP_RX_TIMEOUT_MASK);

	/*max value: 20 clock cycles of txclkesc*/
	FUNC25(FUNC19(pipe),
				0x14 & DSI_TURN_AROUND_TIMEOUT_MASK);

	/*min 21 txclkesc, max: ffffh*/
	FUNC25(FUNC4(pipe),
				0xffff & DSI_RESET_TIMER_MASK);

	FUNC25(FUNC6(pipe),
				mode->vdisplay << 16 | mode->hdisplay);

	/*set DPI timing registers*/
	FUNC26(mode, &dpi_timing,
				dsi_config->lane_count, dsi_config->bpp);

	FUNC25(FUNC13(pipe),
			dpi_timing.hsync_count & DSI_DPI_TIMING_MASK);
	FUNC25(FUNC10(pipe),
			dpi_timing.hbp_count & DSI_DPI_TIMING_MASK);
	FUNC25(FUNC11(pipe),
			dpi_timing.hfp_count & DSI_DPI_TIMING_MASK);
	FUNC25(FUNC9(pipe),
			dpi_timing.hactive_count & DSI_DPI_TIMING_MASK);
	FUNC25(FUNC23(pipe),
			dpi_timing.vsync_count & DSI_DPI_TIMING_MASK);
	FUNC25(FUNC20(pipe),
			dpi_timing.vbp_count & DSI_DPI_TIMING_MASK);
	FUNC25(FUNC21(pipe),
			dpi_timing.vfp_count & DSI_DPI_TIMING_MASK);

	FUNC25(FUNC12(pipe), 0x46);

	/*min: 7d0 max: 4e20*/
	FUNC25(FUNC15(pipe), 0x000007d0);

	/*set up video mode*/
	val = dsi_config->video_mode | DSI_DPI_COMPLETE_LAST_LINE;
	FUNC25(FUNC22(pipe), val);

	FUNC25(FUNC8(pipe), 0x00000000);

	FUNC25(FUNC17(pipe), 0x00000004);

	/*TODO: figure out how to setup these registers*/
	if (FUNC27(dev, pipe) == TC35876X)
		FUNC25(FUNC5(pipe), 0x2A0c6008);
	else
		FUNC25(FUNC5(pipe), 0x150c3408);

	FUNC25(FUNC1(pipe), (0xa << 16) | 0x14);

	if (FUNC27(dev, pipe) == TC35876X)
		FUNC28(dev, 0);  /*Pull High Reset */

	/*set device ready*/
	FUNC24(FUNC3(pipe), 1, 0, 0);
}