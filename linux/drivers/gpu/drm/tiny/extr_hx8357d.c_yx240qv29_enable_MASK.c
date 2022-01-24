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
 int HX8357D_MADCTL_MV ; 
 int HX8357D_MADCTL_MX ; 
 int HX8357D_MADCTL_MY ; 
 int /*<<< orphan*/  HX8357D_SETCOM ; 
 int /*<<< orphan*/  HX8357D_SETCYC ; 
 int /*<<< orphan*/  HX8357D_SETEXTC ; 
 int /*<<< orphan*/  HX8357D_SETGAMMA ; 
 int /*<<< orphan*/  HX8357D_SETOSC ; 
 int /*<<< orphan*/  HX8357D_SETPANEL ; 
 int /*<<< orphan*/  HX8357D_SETPOWER ; 
 int /*<<< orphan*/  HX8357D_SETRGB ; 
 int /*<<< orphan*/  HX8357D_SETSTBA ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int MIPI_DCS_PIXEL_FMT_16BIT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_ADDRESS_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PIXEL_FORMAT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_TEAR_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_TEAR_SCANLINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mipi_dbi_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mipi_dbi*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct mipi_dbi_dev*,struct drm_crtc_state*,struct drm_plane_state*) ; 
 int FUNC6 (struct mipi_dbi_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(struct drm_simple_display_pipe *pipe,
			     struct drm_crtc_state *crtc_state,
			     struct drm_plane_state *plane_state)
{
	struct mipi_dbi_dev *dbidev = FUNC3(pipe->crtc.dev);
	struct mipi_dbi *dbi = &dbidev->dbi;
	u8 addr_mode;
	int ret, idx;

	if (!FUNC1(pipe->crtc.dev, &idx))
		return;

	FUNC0("\n");

	ret = FUNC6(dbidev);
	if (ret < 0)
		goto out_exit;
	if (ret == 1)
		goto out_enable;

	/* setextc */
	FUNC4(dbi, HX8357D_SETEXTC, 0xFF, 0x83, 0x57);
	FUNC7(150);

	/* setRGB which also enables SDO */
	FUNC4(dbi, HX8357D_SETRGB, 0x00, 0x00, 0x06, 0x06);

	/* -1.52V */
	FUNC4(dbi, HX8357D_SETCOM, 0x25);

	/* Normal mode 70Hz, Idle mode 55 Hz */
	FUNC4(dbi, HX8357D_SETOSC, 0x68);

	/* Set Panel - BGR, Gate direction swapped */
	FUNC4(dbi, HX8357D_SETPANEL, 0x05);

	FUNC4(dbi, HX8357D_SETPOWER,
			 0x00,  /* Not deep standby */
			 0x15,  /* BT */
			 0x1C,  /* VSPR */
			 0x1C,  /* VSNR */
			 0x83,  /* AP */
			 0xAA);  /* FS */

	FUNC4(dbi, HX8357D_SETSTBA,
			 0x50,  /* OPON normal */
			 0x50,  /* OPON idle */
			 0x01,  /* STBA */
			 0x3C,  /* STBA */
			 0x1E,  /* STBA */
			 0x08);  /* GEN */

	FUNC4(dbi, HX8357D_SETCYC,
			 0x02,  /* NW 0x02 */
			 0x40,  /* RTN */
			 0x00,  /* DIV */
			 0x2A,  /* DUM */
			 0x2A,  /* DUM */
			 0x0D,  /* GDON */
			 0x78);  /* GDOFF */

	FUNC4(dbi, HX8357D_SETGAMMA,
			 0x02,
			 0x0A,
			 0x11,
			 0x1d,
			 0x23,
			 0x35,
			 0x41,
			 0x4b,
			 0x4b,
			 0x42,
			 0x3A,
			 0x27,
			 0x1B,
			 0x08,
			 0x09,
			 0x03,
			 0x02,
			 0x0A,
			 0x11,
			 0x1d,
			 0x23,
			 0x35,
			 0x41,
			 0x4b,
			 0x4b,
			 0x42,
			 0x3A,
			 0x27,
			 0x1B,
			 0x08,
			 0x09,
			 0x03,
			 0x00,
			 0x01);

	/* 16 bit */
	FUNC4(dbi, MIPI_DCS_SET_PIXEL_FORMAT,
			 MIPI_DCS_PIXEL_FMT_16BIT);

	/* TE off */
	FUNC4(dbi, MIPI_DCS_SET_TEAR_ON, 0x00);

	/* tear line */
	FUNC4(dbi, MIPI_DCS_SET_TEAR_SCANLINE, 0x00, 0x02);

	/* Exit Sleep */
	FUNC4(dbi, MIPI_DCS_EXIT_SLEEP_MODE);
	FUNC7(150);

	/* display on */
	FUNC4(dbi, MIPI_DCS_SET_DISPLAY_ON);
	FUNC8(5000, 7000);

out_enable:
	switch (dbidev->rotation) {
	default:
		addr_mode = HX8357D_MADCTL_MX | HX8357D_MADCTL_MY;
		break;
	case 90:
		addr_mode = HX8357D_MADCTL_MV | HX8357D_MADCTL_MY;
		break;
	case 180:
		addr_mode = 0;
		break;
	case 270:
		addr_mode = HX8357D_MADCTL_MV | HX8357D_MADCTL_MX;
		break;
	}
	FUNC4(dbi, MIPI_DCS_SET_ADDRESS_MODE, addr_mode);
	FUNC5(dbidev, crtc_state, plane_state);
out_exit:
	FUNC2(idx);
}