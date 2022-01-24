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
struct dw_mipi_dsi_rockchip {int /*<<< orphan*/  pllref_clk; int /*<<< orphan*/  dmd; scalar_t__ is_slave; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dw_mipi_dsi_rockchip* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
					struct device *master,
					void *data)
{
	struct dw_mipi_dsi_rockchip *dsi = FUNC1(dev);

	if (dsi->is_slave)
		return;

	FUNC2(dsi->dmd);

	FUNC0(dsi->pllref_clk);
}