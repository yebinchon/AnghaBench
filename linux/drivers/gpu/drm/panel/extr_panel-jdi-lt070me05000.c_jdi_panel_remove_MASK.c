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
struct jdi_panel {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct jdi_panel*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mipi_dsi_device*) ; 
 struct jdi_panel* FUNC4 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC5(struct mipi_dsi_device *dsi)
{
	struct jdi_panel *jdi = FUNC4(dsi);
	int ret;

	ret = FUNC2(&jdi->base);
	if (ret < 0)
		FUNC0(&dsi->dev, "failed to disable panel: %d\n", ret);

	ret = FUNC3(dsi);
	if (ret < 0)
		FUNC0(&dsi->dev, "failed to detach from DSI host: %d\n",
			ret);

	FUNC1(jdi);

	return 0;
}