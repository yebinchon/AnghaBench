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
struct tegra_adma_chan {int /*<<< orphan*/ * desc; scalar_t__ chan_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMA_CH_CMD ; 
 scalar_t__ ADMA_CH_STATUS ; 
 unsigned int ADMA_CH_STATUS_XFER_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  readl ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_adma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_adma_chan*) ; 

__attribute__((used)) static void FUNC6(struct tegra_adma_chan *tdc)
{
	unsigned int status;

	/* Disable ADMA */
	FUNC4(tdc, ADMA_CH_CMD, 0);

	/* Clear interrupt status */
	FUNC5(tdc);

	if (FUNC2(readl, tdc->chan_addr + ADMA_CH_STATUS,
			status, !(status & ADMA_CH_STATUS_XFER_EN),
			20, 10000)) {
		FUNC0(FUNC3(tdc), "unable to stop DMA channel\n");
		return;
	}

	FUNC1(tdc->desc);
	tdc->desc = NULL;
}