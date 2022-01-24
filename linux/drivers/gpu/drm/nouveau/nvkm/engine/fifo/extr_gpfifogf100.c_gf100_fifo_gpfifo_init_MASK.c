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
struct TYPE_8__ {int chid; TYPE_2__* inst; } ;
struct gf100_fifo_chan {int /*<<< orphan*/  killed; int /*<<< orphan*/  head; TYPE_3__ base; struct gf100_fifo* fifo; } ;
struct TYPE_9__ {struct nvkm_device* device; } ;
struct TYPE_10__ {TYPE_4__ subdev; } ;
struct TYPE_6__ {TYPE_5__ engine; } ;
struct gf100_fifo {TYPE_1__ base; } ;
struct TYPE_7__ {int addr; } ;

/* Variables and functions */
 struct gf100_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct gf100_fifo*,struct gf100_fifo_chan*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvkm_fifo_chan *base)
{
	struct gf100_fifo_chan *chan = FUNC0(base);
	struct gf100_fifo *fifo = chan->fifo;
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	u32 addr = chan->base.inst->addr >> 12;
	u32 coff = chan->base.chid * 8;

	FUNC4(device, 0x003000 + coff, 0xc0000000 | addr);

	if (FUNC3(&chan->head) && !chan->killed) {
		FUNC2(fifo, chan);
		FUNC4(device, 0x003004 + coff, 0x001f0001);
		FUNC1(fifo);
	}
}