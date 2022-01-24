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
struct mtk_hsdma_vdesc {size_t len; size_t residue; int /*<<< orphan*/  vd; void* dest; void* src; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 struct mtk_hsdma_vdesc* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC3(struct dma_chan *c, dma_addr_t dest,
			  dma_addr_t src, size_t len, unsigned long flags)
{
	struct mtk_hsdma_vdesc *hvd;

	hvd = FUNC0(sizeof(*hvd), GFP_NOWAIT);
	if (!hvd)
		return NULL;

	hvd->len = len;
	hvd->residue = len;
	hvd->src = src;
	hvd->dest = dest;

	return FUNC2(FUNC1(c), &hvd->vd, flags);
}