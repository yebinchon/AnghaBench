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
struct dma_chan {int dummy; } ;
struct axi_dma_chan {TYPE_1__* chip; int /*<<< orphan*/  descs_allocated; int /*<<< orphan*/  vc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWAXIDMAC_IRQ_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dma_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_chan*) ; 
 struct axi_dma_chan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct dma_chan *dchan)
{
	struct axi_dma_chan *chan = FUNC6(dchan);

	/* ASSERT: channel is idle */
	if (FUNC3(chan))
		FUNC7(FUNC5(dchan), "%s is non-idle!\n",
			FUNC4(chan));

	FUNC1(chan);
	FUNC2(chan, DWAXIDMAC_IRQ_ALL);

	FUNC10(&chan->vc);

	FUNC8(FUNC5(dchan),
		 "%s: free resources, descriptor still allocated: %u\n",
		 FUNC4(chan), FUNC0(&chan->descs_allocated));

	FUNC9(chan->chip->dev);
}