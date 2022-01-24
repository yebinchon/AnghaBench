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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct jz4780_dma_chan {TYPE_1__ vchan; int /*<<< orphan*/  desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct jz4780_dma_chan* FUNC3 (struct dma_chan*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct jz4780_dma_chan *jzchan = FUNC3(chan);
	unsigned long flags;

	FUNC1(&jzchan->vchan.lock, flags);

	if (FUNC4(&jzchan->vchan) && !jzchan->desc)
		FUNC0(jzchan);

	FUNC2(&jzchan->vchan.lock, flags);
}