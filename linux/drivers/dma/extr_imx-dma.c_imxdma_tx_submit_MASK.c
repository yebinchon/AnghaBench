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
struct imxdma_engine {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct imxdma_channel {int /*<<< orphan*/  ld_queue; TYPE_1__ ld_free; struct imxdma_engine* imxdma; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct imxdma_channel* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static dma_cookie_t FUNC5(struct dma_async_tx_descriptor *tx)
{
	struct imxdma_channel *imxdmac = FUNC4(tx->chan);
	struct imxdma_engine *imxdma = imxdmac->imxdma;
	dma_cookie_t cookie;
	unsigned long flags;

	FUNC2(&imxdma->lock, flags);
	FUNC1(imxdmac->ld_free.next, &imxdmac->ld_queue);
	cookie = FUNC0(tx);
	FUNC3(&imxdma->lock, flags);

	return cookie;
}