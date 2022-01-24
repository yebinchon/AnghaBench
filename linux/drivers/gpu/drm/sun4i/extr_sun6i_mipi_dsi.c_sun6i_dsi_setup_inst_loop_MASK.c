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
struct mipi_dsi_device {int mode_flags; } ;
struct drm_display_mode {int htotal; int hdisplay; int clock; } ;

/* Variables and functions */
 int DSI_INST_ID_DLY ; 
 int DSI_INST_ID_LP11 ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SUN6I_DSI_INST_LOOP_SEL_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct sun6i_dsi *dsi,
				      struct drm_display_mode *mode)
{
	struct mipi_dsi_device *device = dsi->device;
	u16 delay = 50 - 1;

	if (device->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
		u32 hsync_porch = (mode->htotal - mode->hdisplay) * 150;

		delay = (hsync_porch / ((mode->clock / 1000) * 8));
		delay -= 50;
	}

	FUNC3(dsi->regs, SUN6I_DSI_INST_LOOP_SEL_REG,
		     2 << (4 * DSI_INST_ID_LP11) |
		     3 << (4 * DSI_INST_ID_DLY));

	FUNC3(dsi->regs, FUNC2(0),
		     FUNC0(50 - 1) |
		     FUNC1(delay));
	FUNC3(dsi->regs, FUNC2(1),
		     FUNC0(50 - 1) |
		     FUNC1(delay));
}