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
struct spu_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  qhandle; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct spu_queue *q = dev_id;
	unsigned long head, hv_ret;

	FUNC2(&q->lock);

	FUNC0("CPU[%d]: Got MAU interrupt for qhdl[%lx]\n",
	       FUNC1(), q->qhandle);

	hv_ret = FUNC4(q->qhandle, &head);

	FUNC0("CPU[%d]: MAU gethead[%lx] hv_ret[%lu]\n",
	       FUNC1(), head, hv_ret);

	FUNC5(q->qhandle, head);

	FUNC3(&q->lock);

	return IRQ_HANDLED;
}