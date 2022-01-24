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
struct mipi_dsi_device {int /*<<< orphan*/  dev; } ;
struct innolux_panel {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct innolux_panel*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mipi_dsi_device*) ; 
 struct innolux_panel* FUNC5 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC6(struct mipi_dsi_device *dsi)
{
	struct innolux_panel *innolux = FUNC5(dsi);
	int err;

	err = FUNC3(&innolux->base);
	if (err < 0)
		FUNC0(&dsi->dev, "failed to unprepare panel: %d\n",
			      err);

	err = FUNC2(&innolux->base);
	if (err < 0)
		FUNC0(&dsi->dev, "failed to disable panel: %d\n", err);

	err = FUNC4(dsi);
	if (err < 0)
		FUNC0(&dsi->dev, "failed to detach from DSI host: %d\n",
			      err);

	FUNC1(innolux);

	return 0;
}