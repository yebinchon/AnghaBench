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
struct fsldma_chan {int idle; int /*<<< orphan*/  desc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsldma_chan*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct fsldma_chan *chan = (struct fsldma_chan *)data;

	FUNC0(chan, "tasklet entry\n");

	FUNC2(&chan->desc_lock);

	/* the hardware is now idle and ready for more */
	chan->idle = true;

	/* Run all cleanup for descriptors which have been completed */
	FUNC1(chan);

	FUNC3(&chan->desc_lock);

	FUNC0(chan, "tasklet exit\n");
}