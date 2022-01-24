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
struct dss_pll {int dummy; } ;
struct dpi_data {struct dss_pll* pll; int /*<<< orphan*/  clk_src; int /*<<< orphan*/  dss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpi_data*) ; 
 scalar_t__ FUNC2 (struct dss_pll*) ; 
 struct dss_pll* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dpi_data *dpi)
{
	struct dss_pll *pll;

	if (dpi->pll)
		return;

	dpi->clk_src = FUNC1(dpi);

	pll = FUNC3(dpi->dss, dpi->clk_src);
	if (!pll)
		return;

	if (FUNC2(pll)) {
		FUNC0("PLL not operational\n");
		return;
	}

	dpi->pll = pll;
}