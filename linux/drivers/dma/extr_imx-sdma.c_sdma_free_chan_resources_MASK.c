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
struct sdma_engine {int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_ipg; } ;
struct sdma_channel {scalar_t__ event_id1; scalar_t__ event_id0; struct sdma_engine* sdma; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdma_channel*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sdma_channel*,int /*<<< orphan*/ ) ; 
 struct sdma_channel* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct sdma_channel *sdmac = FUNC5(chan);
	struct sdma_engine *sdma = sdmac->sdma;

	FUNC2(chan);

	FUNC1(chan);

	if (sdmac->event_id0)
		FUNC3(sdmac, sdmac->event_id0);
	if (sdmac->event_id1)
		FUNC3(sdmac, sdmac->event_id1);

	sdmac->event_id0 = 0;
	sdmac->event_id1 = 0;

	FUNC4(sdmac, 0);

	FUNC0(sdma->clk_ipg);
	FUNC0(sdma->clk_ahb);
}