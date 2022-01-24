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
struct otm8009a {int enabled; int /*<<< orphan*/  bl_dev; int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct otm8009a* FUNC4 (struct drm_panel*) ; 
 struct mipi_dsi_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct otm8009a *ctx = FUNC4(panel);
	struct mipi_dsi_device *dsi = FUNC5(ctx->dev);
	int ret;

	if (!ctx->enabled)
		return 0; /* This is not an issue so we return 0 here */

	FUNC0(ctx->bl_dev);

	ret = FUNC2(dsi);
	if (ret)
		return ret;

	ret = FUNC1(dsi);
	if (ret)
		return ret;

	FUNC3(120);

	ctx->enabled = false;

	return 0;
}