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
struct nvkm_fifo {int /*<<< orphan*/  lock; TYPE_1__* func; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* recover_chan ) (struct nvkm_fifo*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_fifo*,int) ; 

void
FUNC4(struct nvkm_fifo *fifo, int chid)
{
	unsigned long flags;
	if (FUNC0(!fifo->func->recover_chan))
		return;
	FUNC1(&fifo->lock, flags);
	fifo->func->recover_chan(fifo, chid);
	FUNC2(&fifo->lock, flags);
}