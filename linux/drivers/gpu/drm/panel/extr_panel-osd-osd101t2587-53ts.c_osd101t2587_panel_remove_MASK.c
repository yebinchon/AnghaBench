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
struct osd101t2587_panel {int /*<<< orphan*/  base; } ;
struct mipi_dsi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mipi_dsi_device*) ; 
 struct osd101t2587_panel* FUNC4 (struct mipi_dsi_device*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mipi_dsi_device *dsi)
{
	struct osd101t2587_panel *osd101t2587 = FUNC4(dsi);
	int ret;

	ret = FUNC5(&osd101t2587->base);
	if (ret < 0)
		FUNC1(&dsi->dev, "failed to disable panel: %d\n", ret);

	FUNC6(&osd101t2587->base);

	FUNC2(&osd101t2587->base);

	ret = FUNC3(dsi);
	if (ret < 0)
		FUNC0(&dsi->dev, "failed to detach from DSI host: %d\n", ret);

	return ret;
}