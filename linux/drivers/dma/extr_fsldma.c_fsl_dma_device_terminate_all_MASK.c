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
struct fsldma_chan {int idle; int /*<<< orphan*/  desc_lock; int /*<<< orphan*/  ld_completed; int /*<<< orphan*/  ld_running; int /*<<< orphan*/  ld_pending; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsldma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fsldma_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *dchan)
{
	struct fsldma_chan *chan;

	if (!dchan)
		return -EINVAL;

	chan = FUNC4(dchan);

	FUNC2(&chan->desc_lock);

	/* Halt the DMA engine */
	FUNC0(chan);

	/* Remove and free all of the descriptors in the LD queue */
	FUNC1(chan, &chan->ld_pending);
	FUNC1(chan, &chan->ld_running);
	FUNC1(chan, &chan->ld_completed);
	chan->idle = true;

	FUNC3(&chan->desc_lock);
	return 0;
}