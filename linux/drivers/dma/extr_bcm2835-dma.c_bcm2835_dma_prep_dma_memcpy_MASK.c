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
typedef  int u32 ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct bcm2835_desc {int /*<<< orphan*/  vd; } ;
struct bcm2835_chan {int /*<<< orphan*/  vc; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int BCM2835_DMA_D_INC ; 
 int BCM2835_DMA_INT_EN ; 
 int BCM2835_DMA_S_INC ; 
 int BCM2835_DMA_WAIT_RESP ; 
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct bcm2835_desc* FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,int,int,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,size_t) ; 
 size_t FUNC2 (struct bcm2835_chan*) ; 
 struct bcm2835_chan* FUNC3 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC5(
	struct dma_chan *chan, dma_addr_t dst, dma_addr_t src,
	size_t len, unsigned long flags)
{
	struct bcm2835_chan *c = FUNC3(chan);
	struct bcm2835_desc *d;
	u32 info = BCM2835_DMA_D_INC | BCM2835_DMA_S_INC;
	u32 extra = BCM2835_DMA_INT_EN | BCM2835_DMA_WAIT_RESP;
	size_t max_len = FUNC2(c);
	size_t frames;

	/* if src, dst or len is not given return with an error */
	if (!src || !dst || !len)
		return NULL;

	/* calculate number of frames */
	frames = FUNC1(len, max_len);

	/* allocate the CB chain - this also fills in the pointers */
	d = FUNC0(chan, DMA_MEM_TO_MEM, false,
					info, extra, frames,
					src, dst, len, 0, GFP_KERNEL);
	if (!d)
		return NULL;

	return FUNC4(&c->vc, &d->vd, flags);
}