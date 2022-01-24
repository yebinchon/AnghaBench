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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct axi_dma_chan {TYPE_1__ vc; scalar_t__ is_paused; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axi_dma_chan*) ; 
 struct axi_dma_chan* FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *dchan)
{
	struct axi_dma_chan *chan = FUNC1(dchan);
	unsigned long flags;

	FUNC2(&chan->vc.lock, flags);

	if (chan->is_paused)
		FUNC0(chan);

	FUNC3(&chan->vc.lock, flags);

	return 0;
}