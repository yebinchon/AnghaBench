#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_dss_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dispc_channel; } ;
struct dpi_data {int /*<<< orphan*/  lock; scalar_t__ vdds_dsi_reg; TYPE_1__* dss; scalar_t__ pll; TYPE_2__ output; } ;
struct TYPE_3__ {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_CLK_SRC_FCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dpi_data* FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct omap_dss_device *dssdev)
{
	struct dpi_data *dpi = FUNC1(dssdev);

	FUNC5(&dpi->lock);

	FUNC2(&dpi->output);

	if (dpi->pll) {
		FUNC4(dpi->dss, dpi->output.dispc_channel,
					  DSS_CLK_SRC_FCK);
		FUNC3(dpi->pll);
	}

	FUNC0(dpi->dss->dispc);

	if (dpi->vdds_dsi_reg)
		FUNC7(dpi->vdds_dsi_reg);

	FUNC6(&dpi->lock);
}