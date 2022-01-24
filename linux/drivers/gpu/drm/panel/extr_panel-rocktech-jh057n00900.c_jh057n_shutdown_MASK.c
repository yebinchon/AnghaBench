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
struct jh057n {int /*<<< orphan*/  panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct jh057n* FUNC3 (struct mipi_dsi_device*) ; 

__attribute__((used)) static void FUNC4(struct mipi_dsi_device *dsi)
{
	struct jh057n *ctx = FUNC3(dsi);
	int ret;

	ret = FUNC2(&ctx->panel);
	if (ret < 0)
		FUNC0(&dsi->dev, "Failed to unprepare panel: %d\n",
			      ret);

	ret = FUNC1(&ctx->panel);
	if (ret < 0)
		FUNC0(&dsi->dev, "Failed to disable panel: %d\n",
			      ret);
}