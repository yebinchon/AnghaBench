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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_mipi {int /*<<< orphan*/  clk; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ needs_vclamp_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_CAL_BIAS_PAD_CFG0 ; 
 int /*<<< orphan*/  MIPI_CAL_BIAS_PAD_CFG2 ; 
 int /*<<< orphan*/  MIPI_CAL_BIAS_PAD_E_VCLAMP_REF ; 
 int /*<<< orphan*/  MIPI_CAL_BIAS_PAD_PDVCLAMP ; 
 int /*<<< orphan*/  MIPI_CAL_BIAS_PAD_PDVREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_mipi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_mipi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tegra_mipi *mipi)
{
	u32 value;
	int err;

	err = FUNC1(mipi->clk);
	if (err < 0)
		return err;

	value = FUNC2(mipi, MIPI_CAL_BIAS_PAD_CFG0);
	value &= ~MIPI_CAL_BIAS_PAD_PDVCLAMP;

	if (mipi->soc->needs_vclamp_ref)
		value |= MIPI_CAL_BIAS_PAD_E_VCLAMP_REF;

	FUNC3(mipi, value, MIPI_CAL_BIAS_PAD_CFG0);

	value = FUNC2(mipi, MIPI_CAL_BIAS_PAD_CFG2);
	value &= ~MIPI_CAL_BIAS_PAD_PDVREG;
	FUNC3(mipi, value, MIPI_CAL_BIAS_PAD_CFG2);

	FUNC0(mipi->clk);

	return 0;
}