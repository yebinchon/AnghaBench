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
typedef  int u8 ;
struct mipi_dbi {int dummy; } ;
struct mipi_dbi_dev {int rotation; int enabled; struct mipi_dbi dbi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;
struct drm_rect {int /*<<< orphan*/  y2; int /*<<< orphan*/  y1; int /*<<< orphan*/  x2; int /*<<< orphan*/  x1; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_INVERT_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_ADDRESS_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_OFF ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PARTIAL_AREA ; 
 int /*<<< orphan*/  ST7586_AUTO_READ_CTRL ; 
 int ST7586_DISP_CTRL_MX ; 
 int ST7586_DISP_CTRL_MY ; 
 int /*<<< orphan*/  ST7586_DISP_MODE_GRAY ; 
 int /*<<< orphan*/  ST7586_ENABLE_ANALOG ; 
 int /*<<< orphan*/  ST7586_ENABLE_DDRAM ; 
 int /*<<< orphan*/  ST7586_OTP_CTRL_OUT ; 
 int /*<<< orphan*/  ST7586_OTP_READ ; 
 int /*<<< orphan*/  ST7586_OTP_RW_CTRL ; 
 int /*<<< orphan*/  ST7586_SET_BIAS_SYSTEM ; 
 int /*<<< orphan*/  ST7586_SET_BOOST_LEVEL ; 
 int /*<<< orphan*/  ST7586_SET_DISP_DUTY ; 
 int /*<<< orphan*/  ST7586_SET_NLINE_INV ; 
 int /*<<< orphan*/  ST7586_SET_PART_DISP ; 
 int /*<<< orphan*/  ST7586_SET_VOP ; 
 int /*<<< orphan*/  ST7586_SET_VOP_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mipi_dbi_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mipi_dbi*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (struct mipi_dbi_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_framebuffer*,struct drm_rect*) ; 

__attribute__((used)) static void FUNC8(struct drm_simple_display_pipe *pipe,
			       struct drm_crtc_state *crtc_state,
			       struct drm_plane_state *plane_state)
{
	struct mipi_dbi_dev *dbidev = FUNC3(pipe->crtc.dev);
	struct drm_framebuffer *fb = plane_state->fb;
	struct mipi_dbi *dbi = &dbidev->dbi;
	struct drm_rect rect = {
		.x1 = 0,
		.x2 = fb->width,
		.y1 = 0,
		.y2 = fb->height,
	};
	int idx, ret;
	u8 addr_mode;

	if (!FUNC1(pipe->crtc.dev, &idx))
		return;

	FUNC0("\n");

	ret = FUNC5(dbidev);
	if (ret)
		goto out_exit;

	FUNC4(dbi, ST7586_AUTO_READ_CTRL, 0x9f);
	FUNC4(dbi, ST7586_OTP_RW_CTRL, 0x00);

	FUNC6(10);

	FUNC4(dbi, ST7586_OTP_READ);

	FUNC6(20);

	FUNC4(dbi, ST7586_OTP_CTRL_OUT);
	FUNC4(dbi, MIPI_DCS_EXIT_SLEEP_MODE);
	FUNC4(dbi, MIPI_DCS_SET_DISPLAY_OFF);

	FUNC6(50);

	FUNC4(dbi, ST7586_SET_VOP_OFFSET, 0x00);
	FUNC4(dbi, ST7586_SET_VOP, 0xe3, 0x00);
	FUNC4(dbi, ST7586_SET_BIAS_SYSTEM, 0x02);
	FUNC4(dbi, ST7586_SET_BOOST_LEVEL, 0x04);
	FUNC4(dbi, ST7586_ENABLE_ANALOG, 0x1d);
	FUNC4(dbi, ST7586_SET_NLINE_INV, 0x00);
	FUNC4(dbi, ST7586_DISP_MODE_GRAY);
	FUNC4(dbi, ST7586_ENABLE_DDRAM, 0x02);

	switch (dbidev->rotation) {
	default:
		addr_mode = 0x00;
		break;
	case 90:
		addr_mode = ST7586_DISP_CTRL_MY;
		break;
	case 180:
		addr_mode = ST7586_DISP_CTRL_MX | ST7586_DISP_CTRL_MY;
		break;
	case 270:
		addr_mode = ST7586_DISP_CTRL_MX;
		break;
	}
	FUNC4(dbi, MIPI_DCS_SET_ADDRESS_MODE, addr_mode);

	FUNC4(dbi, ST7586_SET_DISP_DUTY, 0x7f);
	FUNC4(dbi, ST7586_SET_PART_DISP, 0xa0);
	FUNC4(dbi, MIPI_DCS_SET_PARTIAL_AREA, 0x00, 0x00, 0x00, 0x77);
	FUNC4(dbi, MIPI_DCS_EXIT_INVERT_MODE);

	FUNC6(100);

	dbidev->enabled = true;
	FUNC7(fb, &rect);

	FUNC4(dbi, MIPI_DCS_SET_DISPLAY_ON);
out_exit:
	FUNC2(idx);
}