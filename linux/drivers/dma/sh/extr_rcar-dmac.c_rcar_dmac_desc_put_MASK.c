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
struct rcar_dmac_desc {int /*<<< orphan*/  node; int /*<<< orphan*/  chunks; } ;
struct TYPE_2__ {int /*<<< orphan*/  free; int /*<<< orphan*/  chunks_free; } ;
struct rcar_dmac_chan {int /*<<< orphan*/  lock; TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct rcar_dmac_chan *chan,
			       struct rcar_dmac_desc *desc)
{
	unsigned long flags;

	FUNC2(&chan->lock, flags);
	FUNC1(&desc->chunks, &chan->desc.chunks_free);
	FUNC0(&desc->node, &chan->desc.free);
	FUNC3(&chan->lock, flags);
}