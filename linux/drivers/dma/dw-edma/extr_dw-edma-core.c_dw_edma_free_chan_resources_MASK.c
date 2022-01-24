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
struct dw_edma_chan {TYPE_1__* chip; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dw_edma_chan* FUNC1 (struct dma_chan*) ; 
 int FUNC2 (struct dma_chan*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *dchan)
{
	unsigned long timeout = jiffies + FUNC3(5000);
	struct dw_edma_chan *chan = FUNC1(dchan);
	int ret;

	while (FUNC6(jiffies, timeout)) {
		ret = FUNC2(dchan);
		if (!ret)
			break;

		if (FUNC5(jiffies, timeout))
			return;

		FUNC0();
	}

	FUNC4(chan->chip->dev);
}