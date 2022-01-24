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
struct sirfsoc_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queued; int /*<<< orphan*/  active; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 struct sirfsoc_dma_chan* FUNC0 (struct dma_chan*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sirfsoc_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct sirfsoc_dma_chan *schan = FUNC0(chan);
	unsigned long flags;

	FUNC3(&schan->lock, flags);

	if (FUNC1(&schan->active) && !FUNC1(&schan->queued))
		FUNC2(schan);

	FUNC4(&schan->lock, flags);
}