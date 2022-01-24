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
struct TYPE_3__ {int /*<<< orphan*/  pages; int /*<<< orphan*/  chunks_free; } ;
struct rcar_dmac_chan {TYPE_1__ desc; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 
 struct rcar_dmac_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *chan)
{
	struct rcar_dmac_chan *rchan = FUNC4(chan);
	int ret;

	FUNC0(&rchan->desc.chunks_free);
	FUNC0(&rchan->desc.pages);

	/* Preallocate descriptors. */
	ret = FUNC3(rchan, GFP_KERNEL);
	if (ret < 0)
		return -ENOMEM;

	ret = FUNC2(rchan, GFP_KERNEL);
	if (ret < 0)
		return -ENOMEM;

	return FUNC1(chan->device->dev);
}