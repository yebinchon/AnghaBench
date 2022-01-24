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
struct wuxga_nt_panel {int /*<<< orphan*/  base; } ;
struct mipi_dsi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 struct wuxga_nt_panel* FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wuxga_nt_panel*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mipi_dsi_device *dsi)
{
	struct wuxga_nt_panel *wuxga_nt = FUNC2(dsi);
	int ret;

	ret = FUNC4(&wuxga_nt->base);
	if (ret < 0)
		FUNC0(&dsi->dev, "failed to disable panel: %d\n", ret);

	ret = FUNC1(dsi);
	if (ret < 0)
		FUNC0(&dsi->dev, "failed to detach from DSI host: %d\n", ret);

	FUNC3(wuxga_nt);

	return 0;
}