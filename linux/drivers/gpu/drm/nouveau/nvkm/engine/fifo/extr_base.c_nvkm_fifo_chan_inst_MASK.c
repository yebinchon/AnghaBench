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
typedef  int /*<<< orphan*/  u64 ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_fifo {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct nvkm_fifo_chan* FUNC0 (struct nvkm_fifo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct nvkm_fifo_chan *
FUNC3(struct nvkm_fifo *fifo, u64 inst, unsigned long *rflags)
{
	struct nvkm_fifo_chan *chan;
	unsigned long flags;
	FUNC1(&fifo->lock, flags);
	if ((chan = FUNC0(fifo, inst))) {
		*rflags = flags;
		return chan;
	}
	FUNC2(&fifo->lock, flags);
	return NULL;
}