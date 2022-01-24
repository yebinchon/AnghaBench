#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_fifo_cgrp {int /*<<< orphan*/  head; int /*<<< orphan*/  chan_nr; } ;
struct gk104_fifo_chan {int /*<<< orphan*/  head; struct nvkm_fifo_cgrp* cgrp; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct gk104_fifo *fifo, struct gk104_fifo_chan *chan)
{
	struct nvkm_fifo_cgrp *cgrp = chan->cgrp;
	FUNC2(&fifo->base.engine.subdev.mutex);
	if (!FUNC1(&chan->head)) {
		FUNC0(&chan->head);
		if (cgrp && !--cgrp->chan_nr)
			FUNC0(&cgrp->head);
	}
	FUNC3(&fifo->base.engine.subdev.mutex);
}