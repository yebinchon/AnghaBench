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
struct xilinx_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_list; int /*<<< orphan*/  done_list; int /*<<< orphan*/  pending_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xilinx_dma_chan*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct xilinx_dma_chan *chan)
{
	unsigned long flags;

	FUNC0(&chan->lock, flags);

	FUNC2(chan, &chan->pending_list);
	FUNC2(chan, &chan->done_list);
	FUNC2(chan, &chan->active_list);

	FUNC1(&chan->lock, flags);
}