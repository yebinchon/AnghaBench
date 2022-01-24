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
struct dma_chan {struct at_dma_slave* private; int /*<<< orphan*/  device; } ;
struct at_dma_slave {scalar_t__ dma_dev; scalar_t__ cfg; } ;
struct at_dma_chan {int descs_allocated; int /*<<< orphan*/  lock; int /*<<< orphan*/  free_list; } ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct at_dma {TYPE_1__ dma_common; } ;
struct at_desc {int /*<<< orphan*/  desc_node; } ;

/* Variables and functions */
 scalar_t__ ATC_DEFAULT_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CFG ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct at_desc* FUNC2 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct at_dma_chan*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_chan*) ; 
 int init_nr_desc_per_channel ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tmp_list ; 
 struct at_dma* FUNC15 (int /*<<< orphan*/ ) ; 
 struct at_dma_chan* FUNC16 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC17(struct dma_chan *chan)
{
	struct at_dma_chan	*atchan = FUNC16(chan);
	struct at_dma		*atdma = FUNC15(chan->device);
	struct at_desc		*desc;
	struct at_dma_slave	*atslave;
	unsigned long		flags;
	int			i;
	u32			cfg;
	FUNC1(tmp_list);

	FUNC8(FUNC4(chan), "alloc_chan_resources\n");

	/* ASSERT:  channel is idle */
	if (FUNC3(atchan)) {
		FUNC6(FUNC4(chan), "DMA channel not idle ?\n");
		return -EIO;
	}

	cfg = ATC_DEFAULT_CFG;

	atslave = chan->private;
	if (atslave) {
		/*
		 * We need controller-specific data to set up slave
		 * transfers.
		 */
		FUNC0(!atslave->dma_dev || atslave->dma_dev != atdma->dma_common.dev);

		/* if cfg configuration specified take it instead of default */
		if (atslave->cfg)
			cfg = atslave->cfg;
	}

	/* have we already been set up?
	 * reconfigure channel but no need to reallocate descriptors */
	if (!FUNC11(&atchan->free_list))
		return atchan->descs_allocated;

	/* Allocate initial pool of descriptors */
	for (i = 0; i < init_nr_desc_per_channel; i++) {
		desc = FUNC2(chan, GFP_KERNEL);
		if (!desc) {
			FUNC7(atdma->dma_common.dev,
				"Only %d initial descriptors\n", i);
			break;
		}
		FUNC10(&desc->desc_node, &tmp_list);
	}

	FUNC13(&atchan->lock, flags);
	atchan->descs_allocated = i;
	FUNC12(&tmp_list, &atchan->free_list);
	FUNC9(chan);
	FUNC14(&atchan->lock, flags);

	/* channel parameters */
	FUNC5(atchan, CFG, cfg);

	FUNC6(FUNC4(chan),
		"alloc_chan_resources: allocated %d descriptors\n",
		atchan->descs_allocated);

	return atchan->descs_allocated;
}