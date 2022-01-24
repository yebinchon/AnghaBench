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
struct spu_queue {unsigned long head; int /*<<< orphan*/  lock; int /*<<< orphan*/  qhandle; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned long HV_EOK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct spu_queue*,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	unsigned long off, new_head, hv_ret;
	struct spu_queue *q = dev_id;

	FUNC0("CPU[%d]: Got CWQ interrupt for qhdl[%lx]\n",
	       FUNC1(), q->qhandle);

	FUNC2(&q->lock);

	hv_ret = FUNC5(q->qhandle, &new_head);

	FUNC0("CPU[%d]: CWQ gethead[%lx] hv_ret[%lu]\n",
	       FUNC1(), new_head, hv_ret);

	for (off = q->head; off != new_head; off = FUNC4(q, off)) {
		/* XXX ... XXX */
	}

	hv_ret = FUNC6(q->qhandle, new_head);
	if (hv_ret == HV_EOK)
		q->head = new_head;

	FUNC3(&q->lock);

	return IRQ_HANDLED;
}