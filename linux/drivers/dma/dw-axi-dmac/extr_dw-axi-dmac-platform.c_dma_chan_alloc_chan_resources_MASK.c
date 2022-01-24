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
struct axi_dma_chan {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 struct axi_dma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *dchan)
{
	struct axi_dma_chan *chan = FUNC4(dchan);

	/* ASSERT: channel is idle */
	if (FUNC0(chan)) {
		FUNC5(FUNC2(chan), "%s is non-idle!\n",
			FUNC1(chan));
		return -EBUSY;
	}

	FUNC6(FUNC3(dchan), "%s: allocating\n", FUNC1(chan));

	FUNC7(chan->chip->dev);

	return 0;
}