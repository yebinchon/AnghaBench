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
typedef  scalar_t__ u32 ;
struct vc4_dsi {int /*<<< orphan*/  reg_dma_paddr; scalar_t__ reg_paddr; scalar_t__* reg_dma_mem; scalar_t__ regs; struct dma_chan* reg_dma_chan; } ;
struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  (* tx_submit ) (struct dma_async_tx_descriptor*) ;} ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
struct TYPE_2__ {struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC6(struct vc4_dsi *dsi, u32 offset, u32 val)
{
	struct dma_chan *chan = dsi->reg_dma_chan;
	struct dma_async_tx_descriptor *tx;
	dma_cookie_t cookie;
	int ret;

	/* DSI0 should be able to write normally. */
	if (!chan) {
		FUNC5(val, dsi->regs + offset);
		return;
	}

	*dsi->reg_dma_mem = val;

	tx = chan->device->device_prep_dma_memcpy(chan,
						  dsi->reg_paddr + offset,
						  dsi->reg_dma_paddr,
						  4, 0);
	if (!tx) {
		FUNC0("Failed to set up DMA register write\n");
		return;
	}

	cookie = tx->tx_submit(tx);
	ret = FUNC1(cookie);
	if (ret) {
		FUNC0("Failed to submit DMA: %d\n", ret);
		return;
	}
	ret = FUNC2(chan, cookie);
	if (ret)
		FUNC0("Failed to wait for DMA: %d\n", ret);
}