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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dma_slave_config {scalar_t__ src_addr_width; scalar_t__ dst_addr_width; } ;
struct s3c24xx_dma_chan {TYPE_1__ vc; struct dma_slave_config cfg; int /*<<< orphan*/  slave; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_SLAVE_BUSWIDTH_8_BYTES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct s3c24xx_dma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan,
				  struct dma_slave_config *config)
{
	struct s3c24xx_dma_chan *s3cchan = FUNC2(chan);
	unsigned long flags;
	int ret = 0;

	/* Reject definitely invalid configurations */
	if (config->src_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES ||
	    config->dst_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES)
		return -EINVAL;

	FUNC0(&s3cchan->vc.lock, flags);

	if (!s3cchan->slave) {
		ret = -EINVAL;
		goto out;
	}

	s3cchan->cfg = *config;

out:
	FUNC1(&s3cchan->vc.lock, flags);
	return ret;
}