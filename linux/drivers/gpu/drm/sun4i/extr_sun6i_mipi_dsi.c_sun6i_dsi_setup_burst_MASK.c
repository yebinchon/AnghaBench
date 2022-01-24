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
typedef  int u16 ;
struct sun6i_dsi {int /*<<< orphan*/  regs; struct mipi_dsi_device* device; } ;
struct mipi_dsi_device {int mode_flags; int /*<<< orphan*/  format; } ;
struct drm_display_mode {int hsync_end; int hdisplay; } ;

/* Variables and functions */
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SUN6I_DSI_BURST_DRQ_REG ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SUN6I_DSI_BURST_LINE_REG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN6I_DSI_SYNC_POINT ; 
 int SUN6I_DSI_TCON_DRQ_ENABLE_MODE ; 
 int /*<<< orphan*/  SUN6I_DSI_TCON_DRQ_REG ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sun6i_dsi*,struct drm_display_mode*,int,int) ; 
 int FUNC8 (struct sun6i_dsi*,struct drm_display_mode*,int) ; 
 int FUNC9 (struct sun6i_dsi*,struct drm_display_mode*) ; 

__attribute__((used)) static void FUNC10(struct sun6i_dsi *dsi,
				  struct drm_display_mode *mode)
{
	struct mipi_dsi_device *device = dsi->device;
	u32 val = 0;

	if (device->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
		u16 line_num = FUNC9(dsi, mode);
		u16 edge0, edge1;

		edge1 = FUNC8(dsi, mode, line_num);
		edge0 = FUNC7(dsi, mode, line_num, edge1);

		FUNC6(dsi->regs, SUN6I_DSI_BURST_DRQ_REG,
			     FUNC0(edge0) |
			     FUNC1(edge1));

		FUNC6(dsi->regs, SUN6I_DSI_BURST_LINE_REG,
			     FUNC2(line_num) |
			     FUNC3(SUN6I_DSI_SYNC_POINT));

		val = SUN6I_DSI_TCON_DRQ_ENABLE_MODE;
	} else if ((mode->hsync_end - mode->hdisplay) > 20) {
		/* Maaaaaagic */
		u16 drq = (mode->hsync_end - mode->hdisplay) - 20;

		drq *= FUNC5(device->format);
		drq /= 32;

		val = (SUN6I_DSI_TCON_DRQ_ENABLE_MODE |
		       FUNC4(drq));
	}

	FUNC6(dsi->regs, SUN6I_DSI_TCON_DRQ_REG, val);
}