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
typedef  int u32 ;
struct cdns_dsi_output {TYPE_1__* dev; int /*<<< orphan*/  phy_opts; } ;
struct cdns_dsi {scalar_t__ regs; int /*<<< orphan*/  dphy; struct cdns_dsi_output output; } ;
struct TYPE_2__ {int /*<<< orphan*/  lanes; } ;

/* Variables and functions */
 int DPHY_ALL_D_PDN ; 
 int DPHY_CMN_PDN ; 
 int DPHY_CMN_PSO ; 
 int DPHY_C_PDN ; 
 int DPHY_C_RSTB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DPHY_PLL_PDN ; 
 int DPHY_PLL_PSO ; 
 scalar_t__ MCTL_DPHY_CFG0 ; 
 scalar_t__ MCTL_MAIN_STS ; 
 scalar_t__ MCTL_MAIN_STS_CLR ; 
 int /*<<< orphan*/  PHY_MODE_MIPI_DPHY ; 
 int PLL_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct cdns_dsi *dsi)
{
	struct cdns_dsi_output *output = &dsi->output;
	u32 status;

	/*
	 * Power all internal DPHY blocks down and maintain their reset line
	 * asserted before changing the DPHY config.
	 */
	FUNC7(DPHY_CMN_PSO | DPHY_PLL_PSO | DPHY_ALL_D_PDN | DPHY_C_PDN |
	       DPHY_CMN_PDN | DPHY_PLL_PDN,
	       dsi->regs + MCTL_DPHY_CFG0);

	FUNC3(dsi->dphy);
	FUNC5(dsi->dphy, PHY_MODE_MIPI_DPHY);
	FUNC2(dsi->dphy, &output->phy_opts);
	FUNC4(dsi->dphy);

	/* Activate the PLL and wait until it's locked. */
	FUNC7(PLL_LOCKED, dsi->regs + MCTL_MAIN_STS_CLR);
	FUNC7(DPHY_CMN_PSO | DPHY_ALL_D_PDN | DPHY_C_PDN | DPHY_CMN_PDN,
	       dsi->regs + MCTL_DPHY_CFG0);
	FUNC1(FUNC6(dsi->regs + MCTL_MAIN_STS, status,
					status & PLL_LOCKED, 100, 100));
	/* De-assert data and clock reset lines. */
	FUNC7(DPHY_CMN_PSO | DPHY_ALL_D_PDN | DPHY_C_PDN | DPHY_CMN_PDN |
	       FUNC0(output->dev->lanes) | DPHY_C_RSTB,
	       dsi->regs + MCTL_DPHY_CFG0);
}