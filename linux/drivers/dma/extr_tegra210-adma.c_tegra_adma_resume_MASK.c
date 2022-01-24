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
 int FUNC0 (struct tegra_adma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_adma_chan*,int /*<<< orphan*/ ,int) ; 
 struct tegra_adma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *dc)
{
	struct tegra_adma_chan *tdc = FUNC2(dc);
	struct tegra_adma_desc *desc = tdc->desc;
	struct tegra_adma_chan_regs *ch_regs = &desc->ch_regs;

	ch_regs->ctrl = FUNC0(tdc, ADMA_CH_CTRL);
	ch_regs->ctrl &= ~(1 << ADMA_CH_CTRL_XFER_PAUSE_SHIFT);
	FUNC1(tdc, ADMA_CH_CTRL, ch_regs->ctrl);

	return 0;
}