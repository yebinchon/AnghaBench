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
typedef  int u32 ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct axi_dma_chan {int is_paused; TYPE_1__ vc; int /*<<< orphan*/  chip; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DMAC_CHAN_SUSP_SHIFT ; 
 int DMAC_CHAN_SUSP_WE_SHIFT ; 
 int /*<<< orphan*/  DMAC_CHEN ; 
 int DWAXIDMAC_IRQ_SUSPENDED ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*,int) ; 
 int FUNC2 (struct axi_dma_chan*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct axi_dma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *dchan)
{
	struct axi_dma_chan *chan = FUNC5(dchan);
	unsigned long flags;
	unsigned int timeout = 20; /* timeout iterations */
	u32 val;

	FUNC6(&chan->vc.lock, flags);

	val = FUNC3(chan->chip, DMAC_CHEN);
	val |= FUNC0(chan->id) << DMAC_CHAN_SUSP_SHIFT |
	       FUNC0(chan->id) << DMAC_CHAN_SUSP_WE_SHIFT;
	FUNC4(chan->chip, DMAC_CHEN, val);

	do  {
		if (FUNC2(chan) & DWAXIDMAC_IRQ_SUSPENDED)
			break;

		FUNC8(2);
	} while (--timeout);

	FUNC1(chan, DWAXIDMAC_IRQ_SUSPENDED);

	chan->is_paused = true;

	FUNC7(&chan->vc.lock, flags);

	return timeout ? 0 : -EAGAIN;
}