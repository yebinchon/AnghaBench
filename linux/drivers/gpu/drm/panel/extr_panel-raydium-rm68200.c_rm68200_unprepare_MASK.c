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
struct rm68200 {int prepared; int /*<<< orphan*/  supply; scalar_t__ reset_gpio; int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int FUNC3 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct rm68200* FUNC5 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mipi_dsi_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_panel *panel)
{
	struct rm68200 *ctx = FUNC5(panel);
	struct mipi_dsi_device *dsi = FUNC7(ctx->dev);
	int ret;

	if (!ctx->prepared)
		return 0;

	ret = FUNC3(dsi);
	if (ret)
		FUNC0("failed to set display off: %d\n", ret);

	ret = FUNC2(dsi);
	if (ret)
		FUNC0("failed to enter sleep mode: %d\n", ret);

	FUNC4(120);

	if (ctx->reset_gpio) {
		FUNC1(ctx->reset_gpio, 1);
		FUNC4(20);
	}

	FUNC6(ctx->supply);

	ctx->prepared = false;

	return 0;
}