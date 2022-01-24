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
typedef  int /*<<< orphan*/  u32 ;
struct dma_chan {int dummy; } ;
struct coh901318_chan {int id; int /*<<< orphan*/  lock; scalar_t__ stopped; TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ COH901318_CX_CFG ; 
 int /*<<< orphan*/  COH901318_CX_CFG_CH_ENABLE ; 
 int COH901318_CX_CFG_SPACING ; 
 int /*<<< orphan*/  FUNC0 (struct coh901318_chan*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct coh901318_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	u32 val;
	unsigned long flags;
	struct coh901318_chan *cohc = FUNC4(chan);
	int channel = cohc->id;

	FUNC2(&cohc->lock, flags);

	FUNC0(cohc);

	if (cohc->stopped) {
		/* Enable channel in HW */
		val = FUNC1(cohc->base->virtbase + COH901318_CX_CFG +
			    COH901318_CX_CFG_SPACING * channel);

		val |= COH901318_CX_CFG_CH_ENABLE;

		FUNC5(val, cohc->base->virtbase + COH901318_CX_CFG +
		       COH901318_CX_CFG_SPACING*channel);

		cohc->stopped = 0;
	}

	FUNC3(&cohc->lock, flags);
	return 0;
}