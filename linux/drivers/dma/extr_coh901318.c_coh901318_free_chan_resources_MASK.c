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
struct coh901318_chan {int id; int /*<<< orphan*/  lock; scalar_t__ allocated; TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ COH901318_CX_CFG ; 
 int COH901318_CX_CFG_SPACING ; 
 scalar_t__ COH901318_CX_CTRL ; 
 int COH901318_CX_CTRL_SPACING ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct coh901318_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct dma_chan *chan)
{
	struct coh901318_chan	*cohc = FUNC3(chan);
	int channel = cohc->id;
	unsigned long flags;

	FUNC1(&cohc->lock, flags);

	/* Disable HW */
	FUNC4(0x00000000U, cohc->base->virtbase + COH901318_CX_CFG +
	       COH901318_CX_CFG_SPACING*channel);
	FUNC4(0x00000000U, cohc->base->virtbase + COH901318_CX_CTRL +
	       COH901318_CX_CTRL_SPACING*channel);

	cohc->allocated = 0;

	FUNC2(&cohc->lock, flags);

	FUNC0(chan);
}