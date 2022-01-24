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
struct pch_dma_desc {int /*<<< orphan*/  desc_node; } ;
struct pch_dma_chan {int descs_allocated; int /*<<< orphan*/  lock; int /*<<< orphan*/  free_list; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int init_nr_desc_per_channel ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pch_dma_desc* FUNC8 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_chan*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct pch_dma_chan*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp_list ; 
 struct pch_dma_chan* FUNC13 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC14(struct dma_chan *chan)
{
	struct pch_dma_chan *pd_chan = FUNC13(chan);
	struct pch_dma_desc *desc;
	FUNC0(tmp_list);
	int i;

	if (!FUNC10(pd_chan)) {
		FUNC2(FUNC1(chan), "DMA channel not idle ?\n");
		return -EIO;
	}

	if (!FUNC6(&pd_chan->free_list))
		return pd_chan->descs_allocated;

	for (i = 0; i < init_nr_desc_per_channel; i++) {
		desc = FUNC8(chan, GFP_KERNEL);

		if (!desc) {
			FUNC3(FUNC1(chan),
				"Only allocated %d initial descriptors\n", i);
			break;
		}

		FUNC5(&desc->desc_node, &tmp_list);
	}

	FUNC11(&pd_chan->lock);
	FUNC7(&tmp_list, &pd_chan->free_list);
	pd_chan->descs_allocated = i;
	FUNC4(chan);
	FUNC12(&pd_chan->lock);

	FUNC9(chan, 1);

	return pd_chan->descs_allocated;
}