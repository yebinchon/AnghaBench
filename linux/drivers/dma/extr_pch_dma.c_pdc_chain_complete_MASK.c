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
struct dma_async_tx_descriptor {int dummy; } ;
struct pch_dma_desc {int /*<<< orphan*/  desc_node; int /*<<< orphan*/  tx_list; struct dma_async_tx_descriptor txd; } ;
struct pch_dma_chan {int /*<<< orphan*/  free_list; } ;
struct dmaengine_desc_callback {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmaengine_desc_callback*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*,struct dmaengine_desc_callback*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pch_dma_chan *pd_chan,
			       struct pch_dma_desc *desc)
{
	struct dma_async_tx_descriptor *txd = &desc->txd;
	struct dmaengine_desc_callback cb;

	FUNC1(txd, &cb);
	FUNC3(&desc->tx_list, &pd_chan->free_list);
	FUNC2(&desc->desc_node, &pd_chan->free_list);

	FUNC0(&cb, NULL);
}