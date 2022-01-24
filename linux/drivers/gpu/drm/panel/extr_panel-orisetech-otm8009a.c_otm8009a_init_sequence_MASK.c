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
struct otm8009a {int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ vdisplay; scalar_t__ hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCS_CMD2_ENA1 ; 
 int /*<<< orphan*/  MCS_CMD2_ENA2 ; 
 int /*<<< orphan*/  MCS_GMCT2_2N ; 
 int /*<<< orphan*/  MCS_GMCT2_2P ; 
 int /*<<< orphan*/  MCS_GOACLKA1 ; 
 int /*<<< orphan*/  MCS_GOACLKA3 ; 
 int /*<<< orphan*/  MCS_GOAECLK ; 
 int /*<<< orphan*/  MCS_GOAVST ; 
 int /*<<< orphan*/  MCS_GVDDSET ; 
 int /*<<< orphan*/  MCS_NO_DOC1 ; 
 int /*<<< orphan*/  MCS_NO_DOC2 ; 
 int /*<<< orphan*/  MCS_NO_DOC3 ; 
 int /*<<< orphan*/  MCS_OSC_ADJ ; 
 int /*<<< orphan*/  MCS_PANCTRLSET1 ; 
 int /*<<< orphan*/  MCS_PANCTRLSET2 ; 
 int /*<<< orphan*/  MCS_PANCTRLSET3 ; 
 int /*<<< orphan*/  MCS_PANCTRLSET4 ; 
 int /*<<< orphan*/  MCS_PANCTRLSET5 ; 
 int /*<<< orphan*/  MCS_PANCTRLSET6 ; 
 int /*<<< orphan*/  MCS_PANCTRLSET7 ; 
 int /*<<< orphan*/  MCS_PANCTRLSET8 ; 
 int /*<<< orphan*/  MCS_PAND2U1 ; 
 int /*<<< orphan*/  MCS_PAND2U2 ; 
 int /*<<< orphan*/  MCS_PAND2U3 ; 
 int /*<<< orphan*/  MCS_PANSET ; 
 int /*<<< orphan*/  MCS_PANU2D1 ; 
 int /*<<< orphan*/  MCS_PANU2D2 ; 
 int /*<<< orphan*/  MCS_PANU2D3 ; 
 scalar_t__ MCS_PWR_CTRL1 ; 
 scalar_t__ MCS_PWR_CTRL2 ; 
 scalar_t__ MCS_PWR_CTRL4 ; 
 int /*<<< orphan*/  MCS_P_DRV_M ; 
 int /*<<< orphan*/  MCS_RGB_VID_SET ; 
 scalar_t__ MCS_SD_CTRL ; 
 scalar_t__ MCS_SD_PCH_CTRL ; 
 int /*<<< orphan*/  MCS_VCOMDC ; 
 int MIPI_DCS_PIXEL_FMT_24BIT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_ADDRESS_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_WRITE_MEMORY_START ; 
 int /*<<< orphan*/  MIPI_DCS_WRITE_POWER_SAVE ; 
 int /*<<< orphan*/  FUNC0 (struct otm8009a*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct otm8009a*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__ default_mode ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct mipi_dsi_device*) ; 
 int FUNC4 (struct mipi_dsi_device*) ; 
 int FUNC5 (struct mipi_dsi_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct mipi_dsi_device*) ; 
 int FUNC7 (struct mipi_dsi_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct mipi_dsi_device*,int) ; 
 struct mipi_dsi_device* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct otm8009a *ctx)
{
	struct mipi_dsi_device *dsi = FUNC9(ctx->dev);
	int ret;

	/* Enter CMD2 */
	FUNC0(ctx, MCS_CMD2_ENA1, 0x80, 0x09, 0x01);

	/* Enter Orise Command2 */
	FUNC0(ctx, MCS_CMD2_ENA2, 0x80, 0x09);

	FUNC0(ctx, MCS_SD_PCH_CTRL, 0x30);
	FUNC2(10);

	FUNC0(ctx, MCS_NO_DOC1, 0x40);
	FUNC2(10);

	FUNC0(ctx, MCS_PWR_CTRL4 + 1, 0xA9);
	FUNC0(ctx, MCS_PWR_CTRL2 + 1, 0x34);
	FUNC0(ctx, MCS_P_DRV_M, 0x50);
	FUNC0(ctx, MCS_VCOMDC, 0x4E);
	FUNC0(ctx, MCS_OSC_ADJ, 0x66); /* 65Hz */
	FUNC0(ctx, MCS_PWR_CTRL2 + 2, 0x01);
	FUNC0(ctx, MCS_PWR_CTRL2 + 5, 0x34);
	FUNC0(ctx, MCS_PWR_CTRL2 + 4, 0x33);
	FUNC0(ctx, MCS_GVDDSET, 0x79, 0x79);
	FUNC0(ctx, MCS_SD_CTRL + 1, 0x1B);
	FUNC0(ctx, MCS_PWR_CTRL1 + 2, 0x83);
	FUNC0(ctx, MCS_SD_PCH_CTRL + 1, 0x83);
	FUNC0(ctx, MCS_RGB_VID_SET, 0x0E);
	FUNC0(ctx, MCS_PANSET, 0x00, 0x01);

	FUNC0(ctx, MCS_GOAVST, 0x85, 0x01, 0x00, 0x84, 0x01, 0x00);
	FUNC0(ctx, MCS_GOACLKA1, 0x18, 0x04, 0x03, 0x39, 0x00, 0x00,
			 0x00, 0x18, 0x03, 0x03, 0x3A, 0x00, 0x00, 0x00);
	FUNC0(ctx, MCS_GOACLKA3, 0x18, 0x02, 0x03, 0x3B, 0x00, 0x00,
			 0x00, 0x18, 0x01, 0x03, 0x3C, 0x00, 0x00, 0x00);
	FUNC0(ctx, MCS_GOAECLK, 0x01, 0x01, 0x20, 0x20, 0x00, 0x00,
			 0x01, 0x02, 0x00, 0x00);

	FUNC0(ctx, MCS_NO_DOC2, 0x00);

	FUNC0(ctx, MCS_PANCTRLSET1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	FUNC0(ctx, MCS_PANCTRLSET2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			 0, 0, 0, 0, 0);
	FUNC0(ctx, MCS_PANCTRLSET3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			 0, 0, 0, 0, 0);
	FUNC0(ctx, MCS_PANCTRLSET4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	FUNC0(ctx, MCS_PANCTRLSET5, 0, 4, 4, 4, 4, 4, 0, 0, 0, 0,
			 0, 0, 0, 0, 0);
	FUNC0(ctx, MCS_PANCTRLSET6, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4,
			 4, 0, 0, 0, 0);
	FUNC0(ctx, MCS_PANCTRLSET7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	FUNC0(ctx, MCS_PANCTRLSET8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
			 0xFF, 0xFF, 0xFF, 0xFF, 0xFF);

	FUNC0(ctx, MCS_PANU2D1, 0x00, 0x26, 0x09, 0x0B, 0x01, 0x25,
			 0x00, 0x00, 0x00, 0x00);
	FUNC0(ctx, MCS_PANU2D2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x0A, 0x0C, 0x02);
	FUNC0(ctx, MCS_PANU2D3, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
	FUNC0(ctx, MCS_PAND2U1, 0x00, 0x25, 0x0C, 0x0A, 0x02, 0x26,
			 0x00, 0x00, 0x00, 0x00);
	FUNC0(ctx, MCS_PAND2U2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x0B, 0x09, 0x01);
	FUNC0(ctx, MCS_PAND2U3, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);

	FUNC0(ctx, MCS_PWR_CTRL1 + 1, 0x66);

	FUNC0(ctx, MCS_NO_DOC3, 0x06);

	FUNC0(ctx, MCS_GMCT2_2P, 0x00, 0x09, 0x0F, 0x0E, 0x07, 0x10,
			 0x0B, 0x0A, 0x04, 0x07, 0x0B, 0x08, 0x0F, 0x10, 0x0A,
			 0x01);
	FUNC0(ctx, MCS_GMCT2_2N, 0x00, 0x09, 0x0F, 0x0E, 0x07, 0x10,
			 0x0B, 0x0A, 0x04, 0x07, 0x0B, 0x08, 0x0F, 0x10, 0x0A,
			 0x01);

	/* Exit CMD2 */
	FUNC0(ctx, MCS_CMD2_ENA1, 0xFF, 0xFF, 0xFF);

	ret = FUNC4(dsi);
	if (ret)
		return ret;

	ret = FUNC3(dsi);
	if (ret)
		return ret;

	/* Wait for sleep out exit */
	FUNC2(120);

	/* Default portrait 480x800 rgb24 */
	FUNC1(ctx, MIPI_DCS_SET_ADDRESS_MODE, 0x00);

	ret = FUNC5(dsi, 0,
					      default_mode.hdisplay - 1);
	if (ret)
		return ret;

	ret = FUNC7(dsi, 0, default_mode.vdisplay - 1);
	if (ret)
		return ret;

	/* See otm8009a driver documentation for pixel format descriptions */
	ret = FUNC8(dsi, MIPI_DCS_PIXEL_FMT_24BIT |
					    MIPI_DCS_PIXEL_FMT_24BIT << 4);
	if (ret)
		return ret;

	/* Disable CABC feature */
	FUNC1(ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x00);

	ret = FUNC6(dsi);
	if (ret)
		return ret;

	ret = FUNC4(dsi);
	if (ret)
		return ret;

	/* Send Command GRAM memory write (no parameters) */
	FUNC1(ctx, MIPI_DCS_WRITE_MEMORY_START);

	/* Wait a short while to let the panel be ready before the 1st frame */
	FUNC2(10);

	return 0;
}