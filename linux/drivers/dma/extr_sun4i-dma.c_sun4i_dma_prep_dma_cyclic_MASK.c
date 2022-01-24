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
struct dma_slave_config {scalar_t__ src_addr; scalar_t__ dst_addr; } ;
struct sun4i_dma_vchan {int /*<<< orphan*/  vc; int /*<<< orphan*/  endpoint; scalar_t__ is_dedicated; struct dma_slave_config cfg; } ;
struct sun4i_dma_promise {int cfg; int /*<<< orphan*/  list; } ;
struct sun4i_dma_contract {int is_cyclic; int /*<<< orphan*/  vd; int /*<<< orphan*/  demands; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int DMA_MEM_TO_DEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUN4I_NDMA_ADDR_MODE_IO ; 
 int /*<<< orphan*/  SUN4I_NDMA_DRQ_TYPE_SDRAM ; 
 int /*<<< orphan*/  FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct sun4i_dma_contract* FUNC7 () ; 
 struct sun4i_dma_promise* FUNC8 (struct dma_chan*,scalar_t__,scalar_t__,int,struct dma_slave_config*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (size_t,size_t) ; 
 struct sun4i_dma_vchan* FUNC12 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC14(struct dma_chan *chan, dma_addr_t buf, size_t len,
			  size_t period_len, enum dma_transfer_direction dir,
			  unsigned long flags)
{
	struct sun4i_dma_vchan *vchan = FUNC12(chan);
	struct dma_slave_config *sconfig = &vchan->cfg;
	struct sun4i_dma_promise *promise;
	struct sun4i_dma_contract *contract;
	dma_addr_t src, dest;
	u32 endpoints;
	int nr_periods, offset, plength, i;

	if (!FUNC9(dir)) {
		FUNC6(FUNC5(chan), "Invalid DMA direction\n");
		return NULL;
	}

	if (vchan->is_dedicated) {
		/*
		 * As we are using this just for audio data, we need to use
		 * normal DMA. There is nothing stopping us from supporting
		 * dedicated DMA here as well, so if a client comes up and
		 * requires it, it will be simple to implement it.
		 */
		FUNC6(FUNC5(chan),
			"Cyclic transfers are only supported on Normal DMA\n");
		return NULL;
	}

	contract = FUNC7();
	if (!contract)
		return NULL;

	contract->is_cyclic = 1;

	/* Figure out the endpoints and the address we need */
	if (dir == DMA_MEM_TO_DEV) {
		src = buf;
		dest = sconfig->dst_addr;
		endpoints = FUNC4(SUN4I_NDMA_DRQ_TYPE_SDRAM) |
			    FUNC2(vchan->endpoint) |
			    FUNC1(SUN4I_NDMA_ADDR_MODE_IO);
	} else {
		src = sconfig->src_addr;
		dest = buf;
		endpoints = FUNC4(vchan->endpoint) |
			    FUNC3(SUN4I_NDMA_ADDR_MODE_IO) |
			    FUNC2(SUN4I_NDMA_DRQ_TYPE_SDRAM);
	}

	/*
	 * We will be using half done interrupts to make two periods
	 * out of a promise, so we need to program the DMA engine less
	 * often
	 */

	/*
	 * The engine can interrupt on half-transfer, so we can use
	 * this feature to program the engine half as often as if we
	 * didn't use it (keep in mind the hardware doesn't support
	 * linked lists).
	 *
	 * Say you have a set of periods (| marks the start/end, I for
	 * interrupt, P for programming the engine to do a new
	 * transfer), the easy but slow way would be to do
	 *
	 *  |---|---|---|---| (periods / promises)
	 *  P  I,P I,P I,P  I
	 *
	 * Using half transfer interrupts you can do
	 *
	 *  |-------|-------| (promises as configured on hw)
	 *  |---|---|---|---| (periods)
	 *  P   I  I,P  I   I
	 *
	 * Which requires half the engine programming for the same
	 * functionality.
	 */
	nr_periods = FUNC0(len / period_len, 2);
	for (i = 0; i < nr_periods; i++) {
		/* Calculate the offset in the buffer and the length needed */
		offset = i * period_len * 2;
		plength = FUNC11((len - offset), (period_len * 2));
		if (dir == DMA_MEM_TO_DEV)
			src = buf + offset;
		else
			dest = buf + offset;

		/* Make the promise */
		promise = FUNC8(chan, src, dest,
						plength, sconfig, dir);
		if (!promise) {
			/* TODO: should we free everything? */
			return NULL;
		}
		promise->cfg |= endpoints;

		/* Then add it to the contract */
		FUNC10(&promise->list, &contract->demands);
	}

	/* And add it to the vchan */
	return FUNC13(&vchan->vc, &contract->vd, flags);
}