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
struct mipi_dsi_device {int dummy; } ;
struct ili9881c {TYPE_1__* backlight; int /*<<< orphan*/  panel; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mipi_dsi_device*) ; 
 struct ili9881c* FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_device *dsi)
{
	struct ili9881c *ctx = FUNC2(dsi);

	FUNC1(dsi);
	FUNC0(&ctx->panel);

	if (ctx->backlight)
		FUNC3(&ctx->backlight->dev);

	return 0;
}