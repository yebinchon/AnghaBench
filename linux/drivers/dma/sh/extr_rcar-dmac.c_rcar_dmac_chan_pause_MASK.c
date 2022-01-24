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
struct rcar_dmac_chan {int /*<<< orphan*/  lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcar_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rcar_dmac_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *chan)
{
	unsigned long flags;
	struct rcar_dmac_chan *rchan = FUNC3(chan);

	FUNC1(&rchan->lock, flags);
	FUNC0(rchan);
	FUNC2(&rchan->lock, flags);

	return 0;
}