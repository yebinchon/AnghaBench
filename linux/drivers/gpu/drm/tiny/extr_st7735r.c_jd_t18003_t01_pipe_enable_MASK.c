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
struct mipi_dbi_dev {int rotation; struct mipi_dbi dbi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MIPI_DCS_ENTER_NORMAL_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_INVERT_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_PIXEL_FMT_16BIT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_ADDRESS_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PIXEL_FORMAT ; 
 int /*<<< orphan*/  ST7735R_FRMCTR1 ; 
 int /*<<< orphan*/  ST7735R_FRMCTR2 ; 
 int /*<<< orphan*/  ST7735R_FRMCTR3 ; 
 int /*<<< orphan*/  ST7735R_GAMCTRN1 ; 
 int /*<<< orphan*/  ST7735R_GAMCTRP1 ; 
 int /*<<< orphan*/  ST7735R_INVCTR ; 
 int ST7735R_MV ; 
 int ST7735R_MX ; 
 int ST7735R_MY ; 
 int /*<<< orphan*/  ST7735R_PWCTR1 ; 
 int /*<<< orphan*/  ST7735R_PWCTR2 ; 
 int /*<<< orphan*/  ST7735R_PWCTR3 ; 
 int /*<<< orphan*/  ST7735R_PWCTR4 ; 
 int /*<<< orphan*/  ST7735R_PWCTR5 ; 
 int /*<<< orphan*/  ST7735R_VMCTR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mipi_dbi_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mipi_dbi*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mipi_dbi_dev*,struct drm_crtc_state*,struct drm_plane_state*) ; 
 int FUNC6 (struct mipi_dbi_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct drm_simple_display_pipe *pipe,
				      struct drm_crtc_state *crtc_state,
				      struct drm_plane_state *plane_state)
{
	struct mipi_dbi_dev *dbidev = FUNC3(pipe->crtc.dev);
	struct mipi_dbi *dbi = &dbidev->dbi;
	int ret, idx;
	u8 addr_mode;

	if (!FUNC1(pipe->crtc.dev, &idx))
		return;

	FUNC0("\n");

	ret = FUNC6(dbidev);
	if (ret)
		goto out_exit;

	FUNC7(150);

	FUNC4(dbi, MIPI_DCS_EXIT_SLEEP_MODE);
	FUNC7(500);

	FUNC4(dbi, ST7735R_FRMCTR1, 0x01, 0x2c, 0x2d);
	FUNC4(dbi, ST7735R_FRMCTR2, 0x01, 0x2c, 0x2d);
	FUNC4(dbi, ST7735R_FRMCTR3, 0x01, 0x2c, 0x2d, 0x01, 0x2c,
			 0x2d);
	FUNC4(dbi, ST7735R_INVCTR, 0x07);
	FUNC4(dbi, ST7735R_PWCTR1, 0xa2, 0x02, 0x84);
	FUNC4(dbi, ST7735R_PWCTR2, 0xc5);
	FUNC4(dbi, ST7735R_PWCTR3, 0x0a, 0x00);
	FUNC4(dbi, ST7735R_PWCTR4, 0x8a, 0x2a);
	FUNC4(dbi, ST7735R_PWCTR5, 0x8a, 0xee);
	FUNC4(dbi, ST7735R_VMCTR1, 0x0e);
	FUNC4(dbi, MIPI_DCS_EXIT_INVERT_MODE);
	switch (dbidev->rotation) {
	default:
		addr_mode = ST7735R_MX | ST7735R_MY;
		break;
	case 90:
		addr_mode = ST7735R_MX | ST7735R_MV;
		break;
	case 180:
		addr_mode = 0;
		break;
	case 270:
		addr_mode = ST7735R_MY | ST7735R_MV;
		break;
	}
	FUNC4(dbi, MIPI_DCS_SET_ADDRESS_MODE, addr_mode);
	FUNC4(dbi, MIPI_DCS_SET_PIXEL_FORMAT,
			 MIPI_DCS_PIXEL_FMT_16BIT);
	FUNC4(dbi, ST7735R_GAMCTRP1, 0x02, 0x1c, 0x07, 0x12, 0x37,
			 0x32, 0x29, 0x2d, 0x29, 0x25, 0x2b, 0x39, 0x00, 0x01,
			 0x03, 0x10);
	FUNC4(dbi, ST7735R_GAMCTRN1, 0x03, 0x1d, 0x07, 0x06, 0x2e,
			 0x2c, 0x29, 0x2d, 0x2e, 0x2e, 0x37, 0x3f, 0x00, 0x00,
			 0x02, 0x10);
	FUNC4(dbi, MIPI_DCS_SET_DISPLAY_ON);

	FUNC7(100);

	FUNC4(dbi, MIPI_DCS_ENTER_NORMAL_MODE);

	FUNC7(20);

	FUNC5(dbidev, crtc_state, plane_state);
out_exit:
	FUNC2(idx);
}