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
struct dma_slave_config {int src_maxburst; int dst_maxburst; void* dst_addr_width; void* src_addr_width; } ;
struct sun4i_dma_vchan {int /*<<< orphan*/  vc; scalar_t__ is_dedicated; struct dma_slave_config cfg; } ;
struct sun4i_dma_promise {int cfg; int /*<<< orphan*/  list; } ;
struct sun4i_dma_contract {int /*<<< orphan*/  vd; int /*<<< orphan*/  demands; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int /*<<< orphan*/  SUN4I_DDMA_DRQ_TYPE_SDRAM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_NDMA_DRQ_TYPE_SDRAM ; 
 struct sun4i_dma_promise* FUNC2 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct dma_slave_config*) ; 
 struct sun4i_dma_contract* FUNC3 () ; 
 struct sun4i_dma_promise* FUNC4 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct dma_slave_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sun4i_dma_contract*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sun4i_dma_vchan* FUNC7 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC9(struct dma_chan *chan, dma_addr_t dest,
			  dma_addr_t src, size_t len, unsigned long flags)
{
	struct sun4i_dma_vchan *vchan = FUNC7(chan);
	struct dma_slave_config *sconfig = &vchan->cfg;
	struct sun4i_dma_promise *promise;
	struct sun4i_dma_contract *contract;

	contract = FUNC3();
	if (!contract)
		return NULL;

	/*
	 * We can only do the copy to bus aligned addresses, so
	 * choose the best one so we get decent performance. We also
	 * maximize the burst size for this same reason.
	 */
	sconfig->src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	sconfig->dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	sconfig->src_maxburst = 8;
	sconfig->dst_maxburst = 8;

	if (vchan->is_dedicated)
		promise = FUNC2(chan, src, dest, len, sconfig);
	else
		promise = FUNC4(chan, src, dest, len, sconfig,
						DMA_MEM_TO_MEM);

	if (!promise) {
		FUNC5(contract);
		return NULL;
	}

	/* Configure memcpy mode */
	if (vchan->is_dedicated) {
		promise->cfg |= FUNC1(SUN4I_DDMA_DRQ_TYPE_SDRAM) |
				FUNC0(SUN4I_DDMA_DRQ_TYPE_SDRAM);
	} else {
		promise->cfg |= FUNC1(SUN4I_NDMA_DRQ_TYPE_SDRAM) |
				FUNC0(SUN4I_NDMA_DRQ_TYPE_SDRAM);
	}

	/* Fill the contract with our only promise */
	FUNC6(&promise->list, &contract->demands);

	/* And add it to the vchan */
	return FUNC8(&vchan->vc, &contract->vd, flags);
}