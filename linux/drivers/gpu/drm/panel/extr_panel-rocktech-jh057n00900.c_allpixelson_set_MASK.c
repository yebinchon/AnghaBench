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
typedef  int u64 ;
struct mipi_dsi_device {int dummy; } ;
struct jh057n {int /*<<< orphan*/  panel; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ST7703_CMD_ALL_PIXEL_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mipi_dsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct mipi_dsi_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *data, u64 val)
{
	struct jh057n *ctx = data;
	struct mipi_dsi_device *dsi = FUNC7(ctx->dev);

	FUNC0(ctx->dev, "Setting all pixels on\n");
	FUNC5(dsi, ST7703_CMD_ALL_PIXEL_ON);
	FUNC6(val * 1000);
	/* Reset the panel to get video back */
	FUNC1(&ctx->panel);
	FUNC4(&ctx->panel);
	FUNC3(&ctx->panel);
	FUNC2(&ctx->panel);

	return 0;
}