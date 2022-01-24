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
struct mmp_pdma_chan {int idle; int /*<<< orphan*/  desc_lock; int /*<<< orphan*/  chain_running; int /*<<< orphan*/  chain_pending; int /*<<< orphan*/  phy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_pdma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmp_pdma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mmp_pdma_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *dchan)
{
	struct mmp_pdma_chan *chan = FUNC5(dchan);
	unsigned long flags;

	if (!dchan)
		return -EINVAL;

	FUNC0(chan->phy);
	FUNC2(chan);
	FUNC3(&chan->desc_lock, flags);
	FUNC1(chan, &chan->chain_pending);
	FUNC1(chan, &chan->chain_running);
	FUNC4(&chan->desc_lock, flags);
	chan->idle = true;

	return 0;
}