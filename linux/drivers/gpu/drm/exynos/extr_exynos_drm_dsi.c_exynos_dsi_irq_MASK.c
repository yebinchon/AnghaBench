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
typedef  int u32 ;
struct exynos_dsi {int /*<<< orphan*/  completed; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSIM_INTMSK_REG ; 
 int /*<<< orphan*/  DSIM_INTSRC_REG ; 
 int DSIM_INT_PLL_STABLE ; 
 int DSIM_INT_RX_DONE ; 
 int DSIM_INT_RX_ECC_ERR ; 
 int DSIM_INT_SFR_FIFO_EMPTY ; 
 int DSIM_INT_SFR_HDR_FIFO_EMPTY ; 
 int DSIM_INT_SW_RST_RELEASE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct exynos_dsi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_dsi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (unsigned long*,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct exynos_dsi *dsi = dev_id;
	u32 status;

	status = FUNC2(dsi, DSIM_INTSRC_REG);
	if (!status) {
		static unsigned long int j;
		if (FUNC6(&j, 500))
			FUNC1(dsi->dev, "spurious interrupt\n");
		return IRQ_HANDLED;
	}
	FUNC5(dsi, DSIM_INTSRC_REG, status);

	if (status & DSIM_INT_SW_RST_RELEASE) {
		u32 mask = ~(DSIM_INT_RX_DONE | DSIM_INT_SFR_FIFO_EMPTY |
			DSIM_INT_SFR_HDR_FIFO_EMPTY | DSIM_INT_RX_ECC_ERR |
			DSIM_INT_SW_RST_RELEASE);
		FUNC5(dsi, DSIM_INTMSK_REG, mask);
		FUNC0(&dsi->completed);
		return IRQ_HANDLED;
	}

	if (!(status & (DSIM_INT_RX_DONE | DSIM_INT_SFR_FIFO_EMPTY |
			DSIM_INT_PLL_STABLE)))
		return IRQ_HANDLED;

	if (FUNC3(dsi))
		FUNC4(dsi);

	return IRQ_HANDLED;
}