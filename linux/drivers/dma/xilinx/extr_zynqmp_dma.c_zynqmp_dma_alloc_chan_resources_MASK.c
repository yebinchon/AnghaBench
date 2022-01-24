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
struct TYPE_2__ {int /*<<< orphan*/  tx_submit; } ;
struct zynqmp_dma_desc_sw {scalar_t__ src_p; scalar_t__ dst_p; struct zynqmp_dma_desc_ll* src_v; struct zynqmp_dma_desc_ll* dst_v; int /*<<< orphan*/  node; TYPE_1__ async_tx; } ;
struct zynqmp_dma_desc_ll {int dummy; } ;
struct zynqmp_dma_chan {int idle; int desc_free_cnt; int desc_size; scalar_t__ desc_pool_p; scalar_t__ desc_pool_v; struct zynqmp_dma_desc_sw* sw_desc_pool; int /*<<< orphan*/  dev; int /*<<< orphan*/  free_list; int /*<<< orphan*/  common; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct zynqmp_dma_chan*) ; 
 int ZYNQMP_DMA_NUM_DESCS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct zynqmp_dma_desc_sw* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct zynqmp_dma_chan* FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  zynqmp_dma_tx_submit ; 

__attribute__((used)) static int FUNC8(struct dma_chan *dchan)
{
	struct zynqmp_dma_chan *chan = FUNC7(dchan);
	struct zynqmp_dma_desc_sw *desc;
	int i, ret;

	ret = FUNC6(chan->dev);
	if (ret < 0)
		return ret;

	chan->sw_desc_pool = FUNC4(ZYNQMP_DMA_NUM_DESCS, sizeof(*desc),
				     GFP_KERNEL);
	if (!chan->sw_desc_pool)
		return -ENOMEM;

	chan->idle = true;
	chan->desc_free_cnt = ZYNQMP_DMA_NUM_DESCS;

	FUNC0(&chan->free_list);

	for (i = 0; i < ZYNQMP_DMA_NUM_DESCS; i++) {
		desc = chan->sw_desc_pool + i;
		FUNC3(&desc->async_tx, &chan->common);
		desc->async_tx.tx_submit = zynqmp_dma_tx_submit;
		FUNC5(&desc->node, &chan->free_list);
	}

	chan->desc_pool_v = FUNC2(chan->dev,
					       (2 * chan->desc_size * ZYNQMP_DMA_NUM_DESCS),
					       &chan->desc_pool_p, GFP_KERNEL);
	if (!chan->desc_pool_v)
		return -ENOMEM;

	for (i = 0; i < ZYNQMP_DMA_NUM_DESCS; i++) {
		desc = chan->sw_desc_pool + i;
		desc->src_v = (struct zynqmp_dma_desc_ll *) (chan->desc_pool_v +
					(i * FUNC1(chan) * 2));
		desc->dst_v = (struct zynqmp_dma_desc_ll *) (desc->src_v + 1);
		desc->src_p = chan->desc_pool_p +
				(i * FUNC1(chan) * 2);
		desc->dst_p = desc->src_p + FUNC1(chan);
	}

	return ZYNQMP_DMA_NUM_DESCS;
}