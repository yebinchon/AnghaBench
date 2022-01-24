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
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_fifo {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC2(struct nvkm_fifo *fifo, unsigned long flags,
		   struct nvkm_fifo_chan **pchan)
{
	struct nvkm_fifo_chan *chan = *pchan;
	if (FUNC0(chan)) {
		*pchan = NULL;
		FUNC1(&fifo->lock, flags);
	}
}