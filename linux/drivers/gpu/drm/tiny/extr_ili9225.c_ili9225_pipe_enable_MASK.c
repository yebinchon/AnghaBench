#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mipi_dbi {int dummy; } ;
struct mipi_dbi_dev {int rotation; int enabled; struct mipi_dbi dbi; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;
struct drm_rect {int /*<<< orphan*/  y2; int /*<<< orphan*/  y1; int /*<<< orphan*/  x2; int /*<<< orphan*/  x1; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_crtc_state {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  ILI9225_BLANK_PERIOD_CONTROL_1 ; 
 int /*<<< orphan*/  ILI9225_DISPLAY_CONTROL_1 ; 
 int /*<<< orphan*/  ILI9225_DRIVER_OUTPUT_CONTROL ; 
 int /*<<< orphan*/  ILI9225_ENTRY_MODE ; 
 int /*<<< orphan*/  ILI9225_FRAME_CYCLE_CONTROL ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_1 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_10 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_2 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_3 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_4 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_5 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_6 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_7 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_8 ; 
 int /*<<< orphan*/  ILI9225_GAMMA_CONTROL_9 ; 
 int /*<<< orphan*/  ILI9225_GATE_SCAN_CONTROL ; 
 int /*<<< orphan*/  ILI9225_INTERFACE_CONTROL ; 
 int /*<<< orphan*/  ILI9225_LCD_AC_DRIVING_CONTROL ; 
 int /*<<< orphan*/  ILI9225_OSCILLATION_CONTROL ; 
 int /*<<< orphan*/  ILI9225_PARTIAL_DRIVING_POS_1 ; 
 int /*<<< orphan*/  ILI9225_PARTIAL_DRIVING_POS_2 ; 
 int /*<<< orphan*/  ILI9225_POWER_CONTROL_1 ; 
 int /*<<< orphan*/  ILI9225_POWER_CONTROL_2 ; 
 int /*<<< orphan*/  ILI9225_POWER_CONTROL_3 ; 
 int /*<<< orphan*/  ILI9225_POWER_CONTROL_4 ; 
 int /*<<< orphan*/  ILI9225_POWER_CONTROL_5 ; 
 int /*<<< orphan*/  ILI9225_RAM_ADDRESS_SET_1 ; 
 int /*<<< orphan*/  ILI9225_RAM_ADDRESS_SET_2 ; 
 int /*<<< orphan*/  ILI9225_VCI_RECYCLING ; 
 int /*<<< orphan*/  ILI9225_VERTICAL_SCROLL_1 ; 
 int /*<<< orphan*/  ILI9225_VERTICAL_SCROLL_2 ; 
 int /*<<< orphan*/  ILI9225_VERTICAL_SCROLL_3 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mipi_dbi_dev* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct mipi_dbi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_framebuffer*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC7 (struct mipi_dbi*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct drm_simple_display_pipe *pipe,
				struct drm_crtc_state *crtc_state,
				struct drm_plane_state *plane_state)
{
	struct mipi_dbi_dev *dbidev = FUNC4(pipe->crtc.dev);
	struct drm_framebuffer *fb = plane_state->fb;
	struct device *dev = pipe->crtc.dev->dev;
	struct mipi_dbi *dbi = &dbidev->dbi;
	struct drm_rect rect = {
		.x1 = 0,
		.x2 = fb->width,
		.y1 = 0,
		.y2 = fb->height,
	};
	int ret, idx;
	u8 am_id;

	if (!FUNC2(pipe->crtc.dev, &idx))
		return;

	FUNC0("\n");

	FUNC7(dbi);

	/*
	 * There don't seem to be two example init sequences that match, so
	 * using the one from the popular Arduino library for this display.
	 * https://github.com/Nkawu/TFT_22_ILI9225/blob/master/src/TFT_22_ILI9225.cpp
	 */

	ret = FUNC5(dbi, ILI9225_POWER_CONTROL_1, 0x0000);
	if (ret) {
		FUNC1(dev, "Error sending command %d\n", ret);
		goto out_exit;
	}
	FUNC5(dbi, ILI9225_POWER_CONTROL_2, 0x0000);
	FUNC5(dbi, ILI9225_POWER_CONTROL_3, 0x0000);
	FUNC5(dbi, ILI9225_POWER_CONTROL_4, 0x0000);
	FUNC5(dbi, ILI9225_POWER_CONTROL_5, 0x0000);

	FUNC8(40);

	FUNC5(dbi, ILI9225_POWER_CONTROL_2, 0x0018);
	FUNC5(dbi, ILI9225_POWER_CONTROL_3, 0x6121);
	FUNC5(dbi, ILI9225_POWER_CONTROL_4, 0x006f);
	FUNC5(dbi, ILI9225_POWER_CONTROL_5, 0x495f);
	FUNC5(dbi, ILI9225_POWER_CONTROL_1, 0x0800);

	FUNC8(10);

	FUNC5(dbi, ILI9225_POWER_CONTROL_2, 0x103b);

	FUNC8(50);

	switch (dbidev->rotation) {
	default:
		am_id = 0x30;
		break;
	case 90:
		am_id = 0x18;
		break;
	case 180:
		am_id = 0x00;
		break;
	case 270:
		am_id = 0x28;
		break;
	}
	FUNC5(dbi, ILI9225_DRIVER_OUTPUT_CONTROL, 0x011c);
	FUNC5(dbi, ILI9225_LCD_AC_DRIVING_CONTROL, 0x0100);
	FUNC5(dbi, ILI9225_ENTRY_MODE, 0x1000 | am_id);
	FUNC5(dbi, ILI9225_DISPLAY_CONTROL_1, 0x0000);
	FUNC5(dbi, ILI9225_BLANK_PERIOD_CONTROL_1, 0x0808);
	FUNC5(dbi, ILI9225_FRAME_CYCLE_CONTROL, 0x1100);
	FUNC5(dbi, ILI9225_INTERFACE_CONTROL, 0x0000);
	FUNC5(dbi, ILI9225_OSCILLATION_CONTROL, 0x0d01);
	FUNC5(dbi, ILI9225_VCI_RECYCLING, 0x0020);
	FUNC5(dbi, ILI9225_RAM_ADDRESS_SET_1, 0x0000);
	FUNC5(dbi, ILI9225_RAM_ADDRESS_SET_2, 0x0000);

	FUNC5(dbi, ILI9225_GATE_SCAN_CONTROL, 0x0000);
	FUNC5(dbi, ILI9225_VERTICAL_SCROLL_1, 0x00db);
	FUNC5(dbi, ILI9225_VERTICAL_SCROLL_2, 0x0000);
	FUNC5(dbi, ILI9225_VERTICAL_SCROLL_3, 0x0000);
	FUNC5(dbi, ILI9225_PARTIAL_DRIVING_POS_1, 0x00db);
	FUNC5(dbi, ILI9225_PARTIAL_DRIVING_POS_2, 0x0000);

	FUNC5(dbi, ILI9225_GAMMA_CONTROL_1, 0x0000);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_2, 0x0808);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_3, 0x080a);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_4, 0x000a);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_5, 0x0a08);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_6, 0x0808);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_7, 0x0000);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_8, 0x0a00);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_9, 0x0710);
	FUNC5(dbi, ILI9225_GAMMA_CONTROL_10, 0x0710);

	FUNC5(dbi, ILI9225_DISPLAY_CONTROL_1, 0x0012);

	FUNC8(50);

	FUNC5(dbi, ILI9225_DISPLAY_CONTROL_1, 0x1017);

	dbidev->enabled = true;
	FUNC6(fb, &rect);
out_exit:
	FUNC3(idx);
}