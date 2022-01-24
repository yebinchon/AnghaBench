#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct s6e63j0x03 {TYPE_2__* bl_dev; int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  MIPI_DCS_SET_ADDRESS_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_WRITE_CONTROL_DISPLAY ; 
 int /*<<< orphan*/  MIPI_DCS_WRITE_POWER_SAVE ; 
 int /*<<< orphan*/  MIPI_DSI_DCS_TEAR_MODE_VBLANK ; 
 int FUNC0 (struct mipi_dsi_device*,int) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 int FUNC2 (struct mipi_dsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct s6e63j0x03* FUNC4 (struct drm_panel*) ; 
 int FUNC5 (struct s6e63j0x03*,int) ; 
 int FUNC6 (struct s6e63j0x03*,int,int,...) ; 
 struct mipi_dsi_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_panel *panel)
{
	struct s6e63j0x03 *ctx = FUNC4(panel);
	struct mipi_dsi_device *dsi = FUNC7(ctx->dev);
	int ret;

	FUNC3(120);

	ret = FUNC5(ctx, true);
	if (ret < 0)
		return ret;

	/* set elvss_cond */
	ret = FUNC6(ctx, 0xb1, 0x00, 0x09);
	if (ret < 0)
		return ret;

	/* set pos */
	ret = FUNC6(ctx,
		MIPI_DCS_SET_ADDRESS_MODE, 0x40);
	if (ret < 0)
		return ret;

	/* set default white brightness */
	ret = FUNC0(dsi, 0x00ff);
	if (ret < 0)
		return ret;

	/* set white ctrl */
	ret = FUNC6(ctx,
		MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x20);
	if (ret < 0)
		return ret;

	/* set acl off */
	ret = FUNC6(ctx,
		MIPI_DCS_WRITE_POWER_SAVE, 0x00);
	if (ret < 0)
		return ret;

	ret = FUNC2(dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
	if (ret < 0)
		return ret;

	ret = FUNC5(ctx, false);
	if (ret < 0)
		return ret;

	ret = FUNC1(dsi);
	if (ret < 0)
		return ret;

	ctx->bl_dev->props.power = FB_BLANK_UNBLANK;

	return 0;
}