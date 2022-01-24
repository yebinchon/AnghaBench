#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  regs; int /*<<< orphan*/  irqs; int /*<<< orphan*/  clks; } ;
struct dsi_data {scalar_t__ scp_clk_refcount; int /*<<< orphan*/  pll; TYPE_1__ debugfs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dsi_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct device *master, void *data)
{
	struct dsi_data *dsi = FUNC1(dev);

	FUNC2(dsi->debugfs.clks);
	FUNC2(dsi->debugfs.irqs);
	FUNC2(dsi->debugfs.regs);

	FUNC0(dsi->scp_clk_refcount > 0);

	FUNC3(&dsi->pll);
}