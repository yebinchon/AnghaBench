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
struct rcar_dmac_desc {int /*<<< orphan*/  cyclic; } ;
struct TYPE_2__ {struct rcar_dmac_desc* running; } ;
struct rcar_dmac_chan {TYPE_1__ desc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  RCAR_DMACHCRB ; 
 unsigned int RCAR_DMACHCRB_DPTR_MASK ; 
 unsigned int RCAR_DMACHCRB_DPTR_SHIFT ; 
 int /*<<< orphan*/  RCAR_DMADPCR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (struct rcar_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_dmac_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct rcar_dmac_chan *chan)
{
	struct rcar_dmac_desc *desc = chan->desc.running;
	unsigned int stage;

	if (FUNC1(!desc || !desc->cyclic)) {
		/*
		 * This should never happen, there should always be a running
		 * cyclic descriptor when a descriptor stage end interrupt is
		 * triggered. Warn and return.
		 */
		return IRQ_NONE;
	}

	/* Program the interrupt pointer to the next stage. */
	stage = (FUNC2(chan, RCAR_DMACHCRB) &
		 RCAR_DMACHCRB_DPTR_MASK) >> RCAR_DMACHCRB_DPTR_SHIFT;
	FUNC3(chan, RCAR_DMADPCR, FUNC0(stage));

	return IRQ_WAKE_THREAD;
}