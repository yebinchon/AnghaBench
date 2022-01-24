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
struct mpc_dma_chan {int src_tcd_nunits; int dst_tcd_nunits; int /*<<< orphan*/  lock; int /*<<< orphan*/  dwidth; int /*<<< orphan*/  dst_per_paddr; int /*<<< orphan*/  swidth; int /*<<< orphan*/  src_per_paddr; int /*<<< orphan*/  chan; } ;
struct mpc_dma {int /*<<< orphan*/  is_mpc8308; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int /*<<< orphan*/  dst_addr_width; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr_width; int /*<<< orphan*/  src_addr; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpc_dma* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mpc_dma_chan* FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan,
				 struct dma_slave_config *cfg)
{
	struct mpc_dma_chan *mchan = FUNC2(chan);
	struct mpc_dma *mdma = FUNC1(&mchan->chan);
	unsigned long flags;

	/*
	 * Software constraints:
	 *  - only transfers between a peripheral device and memory are
	 *     supported
	 *  - transfer chunk sizes of 1, 2, 4, 16 (for MPC512x), and 32 bytes
	 *     are supported, and, consequently, source addresses and
	 *     destination addresses; must be aligned accordingly; furthermore,
	 *     for MPC512x SoCs, the transfer size must be aligned on (chunk
	 *     size * maxburst)
	 *  - during the transfer, the RAM address is incremented by the size
	 *     of transfer chunk
	 *  - the peripheral port's address is constant during the transfer.
	 */

	if (!FUNC0(cfg->src_addr, cfg->src_addr_width) ||
	    !FUNC0(cfg->dst_addr, cfg->dst_addr_width)) {
		return -EINVAL;
	}

	if (!FUNC3(cfg->src_addr_width, mdma->is_mpc8308) ||
	    !FUNC3(cfg->dst_addr_width, mdma->is_mpc8308))
		return -EINVAL;

	FUNC4(&mchan->lock, flags);

	mchan->src_per_paddr = cfg->src_addr;
	mchan->src_tcd_nunits = cfg->src_maxburst;
	mchan->swidth = cfg->src_addr_width;
	mchan->dst_per_paddr = cfg->dst_addr;
	mchan->dst_tcd_nunits = cfg->dst_maxburst;
	mchan->dwidth = cfg->dst_addr_width;

	/* Apply defaults */
	if (mchan->src_tcd_nunits == 0)
		mchan->src_tcd_nunits = 1;
	if (mchan->dst_tcd_nunits == 0)
		mchan->dst_tcd_nunits = 1;

	FUNC5(&mchan->lock, flags);

	return 0;
}