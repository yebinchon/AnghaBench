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
struct rad_panel {int /*<<< orphan*/  panel; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 struct rad_panel* FUNC3 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_device *dsi)
{
	struct rad_panel *rad = FUNC3(dsi);
	struct device *dev = &dsi->dev;
	int ret;

	ret = FUNC2(dsi);
	if (ret)
		FUNC0(dev, "Failed to detach from host (%d)\n",
			      ret);

	FUNC1(&rad->panel);

	return 0;
}