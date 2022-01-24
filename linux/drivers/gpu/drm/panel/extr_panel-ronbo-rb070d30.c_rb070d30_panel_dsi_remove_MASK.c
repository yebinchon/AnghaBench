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
struct rb070d30_panel {int /*<<< orphan*/  panel; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mipi_dsi_device*) ; 
 struct rb070d30_panel* FUNC2 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC3(struct mipi_dsi_device *dsi)
{
	struct rb070d30_panel *ctx = FUNC2(dsi);

	FUNC1(dsi);
	FUNC0(&ctx->panel);

	return 0;
}