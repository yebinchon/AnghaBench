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
struct msm_dsi_host {int mode_flags; int /*<<< orphan*/  channel; int /*<<< orphan*/  format; struct drm_display_mode* mode; } ;
struct drm_display_mode {int htotal; int vtotal; int hsync_end; int hsync_start; int vsync_end; int vsync_start; int hdisplay; int vdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  MIPI_DSI_DCS_LONG_WRITE ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int /*<<< orphan*/  REG_DSI_ACTIVE_H ; 
 int /*<<< orphan*/  REG_DSI_ACTIVE_HSYNC ; 
 int /*<<< orphan*/  REG_DSI_ACTIVE_V ; 
 int /*<<< orphan*/  REG_DSI_ACTIVE_VSYNC_HPOS ; 
 int /*<<< orphan*/  REG_DSI_ACTIVE_VSYNC_VPOS ; 
 int /*<<< orphan*/  REG_DSI_CMD_MDP_STREAM_CTRL ; 
 int /*<<< orphan*/  REG_DSI_CMD_MDP_STREAM_TOTAL ; 
 int /*<<< orphan*/  REG_DSI_TOTAL ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct msm_dsi_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC18(struct msm_dsi_host *msm_host, bool is_dual_dsi)
{
	struct drm_display_mode *mode = msm_host->mode;
	u32 hs_start = 0, vs_start = 0; /* take sync start as 0 */
	u32 h_total = mode->htotal;
	u32 v_total = mode->vtotal;
	u32 hs_end = mode->hsync_end - mode->hsync_start;
	u32 vs_end = mode->vsync_end - mode->vsync_start;
	u32 ha_start = h_total - mode->hsync_start;
	u32 ha_end = ha_start + mode->hdisplay;
	u32 va_start = v_total - mode->vsync_start;
	u32 va_end = va_start + mode->vdisplay;
	u32 hdisplay = mode->hdisplay;
	u32 wc;

	FUNC0("");

	/*
	 * For dual DSI mode, the current DRM mode has
	 * the complete width of the panel. Since, the complete
	 * panel is driven by two DSI controllers, the horizontal
	 * timings have to be split between the two dsi controllers.
	 * Adjust the DSI host timing values accordingly.
	 */
	if (is_dual_dsi) {
		h_total /= 2;
		hs_end /= 2;
		ha_start /= 2;
		ha_end /= 2;
		hdisplay /= 2;
	}

	if (msm_host->mode_flags & MIPI_DSI_MODE_VIDEO) {
		FUNC17(msm_host, REG_DSI_ACTIVE_H,
			FUNC4(ha_start) |
			FUNC3(ha_end));
		FUNC17(msm_host, REG_DSI_ACTIVE_V,
			FUNC8(va_start) |
			FUNC7(va_end));
		FUNC17(msm_host, REG_DSI_TOTAL,
			FUNC14(h_total - 1) |
			FUNC15(v_total - 1));

		FUNC17(msm_host, REG_DSI_ACTIVE_HSYNC,
			FUNC2(hs_start) |
			FUNC1(hs_end));
		FUNC17(msm_host, REG_DSI_ACTIVE_VSYNC_HPOS, 0);
		FUNC17(msm_host, REG_DSI_ACTIVE_VSYNC_VPOS,
			FUNC6(vs_start) |
			FUNC5(vs_end));
	} else {		/* command mode */
		/* image data and 1 byte write_memory_start cmd */
		wc = hdisplay * FUNC16(msm_host->format) / 8 + 1;

		FUNC17(msm_host, REG_DSI_CMD_MDP_STREAM_CTRL,
			FUNC11(wc) |
			FUNC10(
					msm_host->channel) |
			FUNC9(
					MIPI_DSI_DCS_LONG_WRITE));

		FUNC17(msm_host, REG_DSI_CMD_MDP_STREAM_TOTAL,
			FUNC12(hdisplay) |
			FUNC13(mode->vdisplay));
	}
}