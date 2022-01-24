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
struct tegra_adma_chan_regs {int ctrl; } ;
struct tegra_adma_desc {struct tegra_adma_chan_regs ch_regs; } ;
struct tegra_adma_chan {struct tegra_adma_desc* desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMA_CH_CTRL ; 
 int ADMA_CH_CTRL_XFER_PAUSE_SHIFT ; 
 int EBUSY ; 
 int /*<<< orphan*/  TEGRA_ADMA_BURST_COMPLETE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_adma_chan*) ; 
 int FUNC2 (struct tegra_adma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_adma_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_adma_chan*) ; 
 struct tegra_adma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *dc)
{
	struct tegra_adma_chan *tdc = FUNC5(dc);
	struct tegra_adma_desc *desc = tdc->desc;
	struct tegra_adma_chan_regs *ch_regs = &desc->ch_regs;
	int dcnt = 10;

	ch_regs->ctrl = FUNC2(tdc, ADMA_CH_CTRL);
	ch_regs->ctrl |= (1 << ADMA_CH_CTRL_XFER_PAUSE_SHIFT);
	FUNC3(tdc, ADMA_CH_CTRL, ch_regs->ctrl);

	while (dcnt-- && !FUNC4(tdc))
		FUNC6(TEGRA_ADMA_BURST_COMPLETE_TIME);

	if (dcnt < 0) {
		FUNC0(FUNC1(tdc), "unable to pause DMA channel\n");
		return -EBUSY;
	}

	return 0;
}