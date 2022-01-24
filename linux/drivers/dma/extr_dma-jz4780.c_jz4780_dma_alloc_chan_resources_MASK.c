#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct jz4780_dma_chan {int /*<<< orphan*/  desc_pool; } ;
struct dma_chan {TYPE_2__* dev; TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  JZ_DMA_DESC_BLOCK_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jz4780_dma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *chan)
{
	struct jz4780_dma_chan *jzchan = FUNC3(chan);

	jzchan->desc_pool = FUNC2(FUNC1(&chan->dev->device),
					    chan->device->dev,
					    JZ_DMA_DESC_BLOCK_SIZE,
					    PAGE_SIZE, 0);
	if (!jzchan->desc_pool) {
		FUNC0(&chan->dev->device,
			"failed to allocate descriptor pool\n");
		return -ENOMEM;
	}

	return 0;
}