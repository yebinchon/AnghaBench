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
struct spu_queue {unsigned long tail; unsigned long head; int /*<<< orphan*/  qhandle; } ;

/* Variables and functions */
 unsigned long HV_EOK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC2(struct spu_queue *qp)
{
	unsigned long head, hv_ret;

	do {
		hv_ret = FUNC1(qp->qhandle, &head);
		if (hv_ret != HV_EOK) {
			FUNC0("Hypervisor error on gethead\n");
			break;
		}
		if (head == qp->tail) {
			qp->head = head;
			break;
		}
	} while (1);
	return hv_ret;
}