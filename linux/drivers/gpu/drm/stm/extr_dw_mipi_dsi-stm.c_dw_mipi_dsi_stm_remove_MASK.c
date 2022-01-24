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
struct platform_device {int dummy; } ;
struct dw_mipi_dsi_stm {int /*<<< orphan*/  vdd_supply; int /*<<< orphan*/  pllref_clk; int /*<<< orphan*/  dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dw_mipi_dsi_stm* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct dw_mipi_dsi_stm *dsi = FUNC2(pdev);

	FUNC1(dsi->dsi);
	FUNC0(dsi->pllref_clk);
	FUNC3(dsi->vdd_supply);

	return 0;
}