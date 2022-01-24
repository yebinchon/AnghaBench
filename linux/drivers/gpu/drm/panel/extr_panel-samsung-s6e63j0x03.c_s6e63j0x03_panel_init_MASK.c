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
struct s6e63j0x03 {int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct TYPE_2__ {int hdisplay; scalar_t__ vdisplay; } ;

/* Variables and functions */
 int FIRST_COLUMN ; 
 TYPE_1__ default_mode ; 
 int FUNC0 (struct mipi_dsi_device*) ; 
 int FUNC1 (struct mipi_dsi_device*,int,int) ; 
 int FUNC2 (struct mipi_dsi_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct s6e63j0x03*,int) ; 
 int FUNC4 (struct s6e63j0x03*,int,int,...) ; 
 int FUNC5 (struct s6e63j0x03*) ; 
 struct mipi_dsi_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct s6e63j0x03 *ctx)
{
	struct mipi_dsi_device *dsi = FUNC6(ctx->dev);
	int ret;

	ret = FUNC5(ctx);
	if (ret < 0)
		return ret;

	ret = FUNC3(ctx, true);
	if (ret < 0)
		return ret;

	/* set porch adjustment */
	ret = FUNC4(ctx, 0xf2, 0x1c, 0x28);
	if (ret < 0)
		return ret;

	/* set frame freq */
	ret = FUNC4(ctx, 0xb5, 0x00, 0x02, 0x00);
	if (ret < 0)
		return ret;

	/* set caset, paset */
	ret = FUNC1(dsi, FIRST_COLUMN,
		default_mode.hdisplay - 1 + FIRST_COLUMN);
	if (ret < 0)
		return ret;

	ret = FUNC2(dsi, 0, default_mode.vdisplay - 1);
	if (ret < 0)
		return ret;

	/* set ltps timming 0, 1 */
	ret = FUNC4(ctx, 0xf8, 0x08, 0x08, 0x08, 0x17,
		0x00, 0x2a, 0x02, 0x26, 0x00, 0x00, 0x02, 0x00, 0x00);
	if (ret < 0)
		return ret;

	ret = FUNC4(ctx, 0xf7, 0x02);
	if (ret < 0)
		return ret;

	/* set param pos te_edge */
	ret = FUNC4(ctx, 0xb0, 0x01);
	if (ret < 0)
		return ret;

	/* set te rising edge */
	ret = FUNC4(ctx, 0xe2, 0x0f);
	if (ret < 0)
		return ret;

	/* set param pos default */
	ret = FUNC4(ctx, 0xb0, 0x00);
	if (ret < 0)
		return ret;

	ret = FUNC0(dsi);
	if (ret < 0)
		return ret;

	ret = FUNC3(ctx, false);
	if (ret < 0)
		return ret;

	return 0;
}