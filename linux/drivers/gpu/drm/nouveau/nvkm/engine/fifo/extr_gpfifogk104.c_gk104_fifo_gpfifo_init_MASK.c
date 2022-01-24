#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_10__ {int chid; TYPE_4__* inst; } ;
struct gk104_fifo_chan {int runl; int /*<<< orphan*/  killed; int /*<<< orphan*/  head; TYPE_5__ base; struct gk104_fifo* fifo; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;
struct TYPE_8__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_3__ base; } ;
struct TYPE_9__ {int addr; } ;

/* Variables and functions */
 struct gk104_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct gk104_fifo*,struct gk104_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct gk104_fifo*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int) ; 

void
FUNC6(struct nvkm_fifo_chan *base)
{
	struct gk104_fifo_chan *chan = FUNC0(base);
	struct gk104_fifo *fifo = chan->fifo;
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	u32 addr = chan->base.inst->addr >> 12;
	u32 coff = chan->base.chid * 8;

	FUNC4(device, 0x800004 + coff, 0x000f0000, chan->runl << 16);
	FUNC5(device, 0x800000 + coff, 0x80000000 | addr);

	if (FUNC3(&chan->head) && !chan->killed) {
		FUNC1(fifo, chan);
		FUNC4(device, 0x800004 + coff, 0x00000400, 0x00000400);
		FUNC2(fifo, chan->runl);
		FUNC4(device, 0x800004 + coff, 0x00000400, 0x00000400);
	}
}