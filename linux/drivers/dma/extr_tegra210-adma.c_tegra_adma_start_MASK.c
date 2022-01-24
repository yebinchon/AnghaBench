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
struct virt_dma_desc {int /*<<< orphan*/  tx; int /*<<< orphan*/  node; } ;
struct tegra_adma_chan_regs {int tc; int ctrl; int src_addr; int trg_addr; int fifo_ctrl; int config; } ;
struct tegra_adma_desc {struct tegra_adma_chan_regs ch_regs; } ;
struct tegra_adma_chan {struct tegra_adma_desc* desc; scalar_t__ tx_buf_count; scalar_t__ tx_buf_pos; int /*<<< orphan*/  vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMA_CH_CMD ; 
 int /*<<< orphan*/  ADMA_CH_CONFIG ; 
 int /*<<< orphan*/  ADMA_CH_CTRL ; 
 int /*<<< orphan*/  ADMA_CH_FIFO_CTRL ; 
 int /*<<< orphan*/  ADMA_CH_LOWER_SRC_ADDR ; 
 int /*<<< orphan*/  ADMA_CH_LOWER_TRG_ADDR ; 
 int /*<<< orphan*/  ADMA_CH_TC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_adma_chan*,int /*<<< orphan*/ ,int) ; 
 struct tegra_adma_desc* FUNC4 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tegra_adma_chan *tdc)
{
	struct virt_dma_desc *vd = FUNC5(&tdc->vc);
	struct tegra_adma_chan_regs *ch_regs;
	struct tegra_adma_desc *desc;

	if (!vd)
		return;

	FUNC1(&vd->node);

	desc = FUNC4(&vd->tx);

	if (!desc) {
		FUNC0(FUNC2(tdc), "unable to start DMA, no descriptor\n");
		return;
	}

	ch_regs = &desc->ch_regs;

	tdc->tx_buf_pos = 0;
	tdc->tx_buf_count = 0;
	FUNC3(tdc, ADMA_CH_TC, ch_regs->tc);
	FUNC3(tdc, ADMA_CH_CTRL, ch_regs->ctrl);
	FUNC3(tdc, ADMA_CH_LOWER_SRC_ADDR, ch_regs->src_addr);
	FUNC3(tdc, ADMA_CH_LOWER_TRG_ADDR, ch_regs->trg_addr);
	FUNC3(tdc, ADMA_CH_FIFO_CTRL, ch_regs->fifo_ctrl);
	FUNC3(tdc, ADMA_CH_CONFIG, ch_regs->config);

	/* Start ADMA */
	FUNC3(tdc, ADMA_CH_CMD, 1);

	tdc->desc = desc;
}