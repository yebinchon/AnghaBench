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
struct scatterlist {int dummy; } ;
struct mtk_uart_apdma_desc {int /*<<< orphan*/  vd; int /*<<< orphan*/  addr; int /*<<< orphan*/  avail_len; } ;
struct mtk_chan {int dir; int /*<<< orphan*/  vc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mtk_uart_apdma_desc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 struct mtk_chan* FUNC4 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC6
	(struct dma_chan *chan, struct scatterlist *sgl,
	unsigned int sglen, enum dma_transfer_direction dir,
	unsigned long tx_flags, void *context)
{
	struct mtk_chan *c = FUNC4(chan);
	struct mtk_uart_apdma_desc *d;

	if (!FUNC0(dir) || sglen != 1)
		return NULL;

	/* Now allocate and setup the descriptor */
	d = FUNC1(sizeof(*d), GFP_ATOMIC);
	if (!d)
		return NULL;

	d->avail_len = FUNC3(sgl);
	d->addr = FUNC2(sgl);
	c->dir = dir;

	return FUNC5(&c->vc, &d->vd, tx_flags);
}