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
struct fsldma_chan {int /*<<< orphan*/ * desc_pool; int /*<<< orphan*/  desc_lock; int /*<<< orphan*/  ld_completed; int /*<<< orphan*/  ld_running; int /*<<< orphan*/  ld_pending; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsldma_chan*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsldma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fsldma_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *dchan)
{
	struct fsldma_chan *chan = FUNC6(dchan);

	FUNC0(chan, "free all channel resources\n");
	FUNC4(&chan->desc_lock);
	FUNC2(chan);
	FUNC3(chan, &chan->ld_pending);
	FUNC3(chan, &chan->ld_running);
	FUNC3(chan, &chan->ld_completed);
	FUNC5(&chan->desc_lock);

	FUNC1(chan->desc_pool);
	chan->desc_pool = NULL;
}