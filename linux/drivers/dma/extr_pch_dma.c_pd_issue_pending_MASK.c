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
struct pch_dma_chan {int /*<<< orphan*/  lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pch_dma_chan*) ; 
 scalar_t__ FUNC1 (struct pch_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pch_dma_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct pch_dma_chan *pd_chan = FUNC4(chan);

	if (FUNC1(pd_chan)) {
		FUNC2(&pd_chan->lock);
		FUNC0(pd_chan);
		FUNC3(&pd_chan->lock);
	}
}