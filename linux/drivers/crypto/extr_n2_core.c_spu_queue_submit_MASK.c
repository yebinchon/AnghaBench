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
struct spu_queue {int q; unsigned long tail; int /*<<< orphan*/  qhandle; } ;

/* Variables and functions */
 unsigned long HV_EOK ; 
 unsigned long FUNC0 (struct spu_queue*,void*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct spu_queue *q, void *last)
{
	unsigned long hv_ret, new_tail;

	new_tail = FUNC0(q, last - q->q);

	hv_ret = FUNC1(q->qhandle, new_tail);
	if (hv_ret == HV_EOK)
		q->tail = new_tail;
	return hv_ret;
}