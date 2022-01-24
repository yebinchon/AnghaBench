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
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_6__ {size_t index; } ;
struct nvkm_engine {TYPE_3__ subdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vmm; } ;
struct gk104_fifo_chan {TYPE_2__* engn; TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  inst; int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 struct gk104_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct nvkm_fifo_chan *base,
			      struct nvkm_engine *engine)
{
	struct gk104_fifo_chan *chan = FUNC0(base);
	FUNC2(chan->base.vmm, &chan->engn[engine->subdev.index].vma);
	FUNC1(&chan->engn[engine->subdev.index].inst);
}