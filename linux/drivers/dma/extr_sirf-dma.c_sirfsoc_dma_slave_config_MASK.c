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
struct sirfsoc_dma_chan {int mode; int /*<<< orphan*/  lock; } ;
struct dma_slave_config {scalar_t__ src_addr_width; scalar_t__ dst_addr_width; int src_maxburst; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int EINVAL ; 
 struct sirfsoc_dma_chan* FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan,
				    struct dma_slave_config *config)
{
	struct sirfsoc_dma_chan *schan = FUNC0(chan);
	unsigned long flags;

	if ((config->src_addr_width != DMA_SLAVE_BUSWIDTH_4_BYTES) ||
		(config->dst_addr_width != DMA_SLAVE_BUSWIDTH_4_BYTES))
		return -EINVAL;

	FUNC1(&schan->lock, flags);
	schan->mode = (config->src_maxburst == 4 ? 1 : 0);
	FUNC2(&schan->lock, flags);

	return 0;
}