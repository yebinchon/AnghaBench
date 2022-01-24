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
struct at_dma_chan {int /*<<< orphan*/  chan_common; } ;
struct at_desc {struct dma_async_tx_descriptor txd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSCR ; 
 struct at_desc* FUNC0 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct at_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct at_dma_chan *atchan)
{
	struct at_desc			*first = FUNC0(atchan);
	struct dma_async_tx_descriptor	*txd = &first->txd;

	FUNC3(FUNC1(&atchan->chan_common),
			"new cyclic period llp 0x%08x\n",
			FUNC2(atchan, DSCR));

	FUNC4(txd, NULL);
}