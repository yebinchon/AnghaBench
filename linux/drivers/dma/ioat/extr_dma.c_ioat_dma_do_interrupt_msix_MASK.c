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
struct ioatdma_chan {int /*<<< orphan*/  cleanup_task; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IOAT_RUN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC2(int irq, void *data)
{
	struct ioatdma_chan *ioat_chan = data;

	if (FUNC1(IOAT_RUN, &ioat_chan->state))
		FUNC0(&ioat_chan->cleanup_task);

	return IRQ_HANDLED;
}