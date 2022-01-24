#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct TYPE_6__ {unsigned int tc; } ;
struct tegra_adma_desc {TYPE_1__ ch_regs; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct tegra_adma_chan {TYPE_5__ vc; TYPE_4__* desc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;
struct TYPE_7__ {scalar_t__ cookie; } ;
struct TYPE_8__ {TYPE_2__ tx; } ;
struct TYPE_9__ {TYPE_3__ vd; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 (struct tegra_adma_chan*) ; 
 struct tegra_adma_chan* FUNC5 (struct dma_chan*) ; 
 struct tegra_adma_desc* FUNC6 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC7 (TYPE_5__*,scalar_t__) ; 

__attribute__((used)) static enum dma_status FUNC8(struct dma_chan *dc,
					    dma_cookie_t cookie,
					    struct dma_tx_state *txstate)
{
	struct tegra_adma_chan *tdc = FUNC5(dc);
	struct tegra_adma_desc *desc;
	struct virt_dma_desc *vd;
	enum dma_status ret;
	unsigned long flags;
	unsigned int residual;

	ret = FUNC0(dc, cookie, txstate);
	if (ret == DMA_COMPLETE || !txstate)
		return ret;

	FUNC2(&tdc->vc.lock, flags);

	vd = FUNC7(&tdc->vc, cookie);
	if (vd) {
		desc = FUNC6(&vd->tx);
		residual = desc->ch_regs.tc;
	} else if (tdc->desc && tdc->desc->vd.tx.cookie == cookie) {
		residual = FUNC4(tdc);
	} else {
		residual = 0;
	}

	FUNC3(&tdc->vc.lock, flags);

	FUNC1(txstate, residual);

	return ret;
}