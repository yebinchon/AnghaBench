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
struct ioatdma_chan {int /*<<< orphan*/  prep_lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOAT_CHAN_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ioatdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ioatdma_chan *ioat_chan)
{
	FUNC1(&ioat_chan->prep_lock);
	if (!FUNC3(IOAT_CHAN_DOWN, &ioat_chan->state))
		FUNC0(ioat_chan);
	FUNC2(&ioat_chan->prep_lock);
}