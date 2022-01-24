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
struct mdfld_dsi_dpi_timing {int hsync_count; int hbp_count; int hfp_count; int hactive_count; int vsync_count; int vbp_count; int vfp_count; } ;
struct mdfld_dsi_config {int /*<<< orphan*/  bpp; int /*<<< orphan*/  lane_count; struct drm_display_mode* mode; struct drm_device* dev; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DSI_DPI_TIMING_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_display_mode*,struct mdfld_dsi_dpi_timing*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mdfld_dsi_config *dsi_config,
					int pipe)
{
	struct drm_device *dev = dsi_config->dev;
	struct mdfld_dsi_dpi_timing dpi_timing;
	struct drm_display_mode *mode = dsi_config->mode;

	FUNC9(mode, &dpi_timing,
					dsi_config->lane_count,
					dsi_config->bpp);

	FUNC8(FUNC0(pipe),
		mode->vdisplay << 16 | mode->hdisplay);
	FUNC8(FUNC4(pipe),
		dpi_timing.hsync_count & DSI_DPI_TIMING_MASK);
	FUNC8(FUNC2(pipe),
		dpi_timing.hbp_count & DSI_DPI_TIMING_MASK);
	FUNC8(FUNC3(pipe),
		dpi_timing.hfp_count & DSI_DPI_TIMING_MASK);
	FUNC8(FUNC1(pipe),
		dpi_timing.hactive_count & DSI_DPI_TIMING_MASK);
	FUNC8(FUNC7(pipe),
		dpi_timing.vsync_count & DSI_DPI_TIMING_MASK);
	FUNC8(FUNC5(pipe),
		dpi_timing.vbp_count & DSI_DPI_TIMING_MASK);
	FUNC8(FUNC6(pipe),
		dpi_timing.vfp_count & DSI_DPI_TIMING_MASK);
}