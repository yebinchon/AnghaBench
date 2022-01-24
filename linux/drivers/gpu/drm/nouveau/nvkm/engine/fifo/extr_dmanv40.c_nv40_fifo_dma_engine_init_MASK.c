#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_instmem {int /*<<< orphan*/  ramfc; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_10__ {size_t index; } ;
struct nvkm_engine {TYPE_4__ subdev; } ;
struct nvkm_device {struct nvkm_instmem* imem; } ;
struct TYPE_11__ {int chid; } ;
struct nv04_fifo_chan {int ramfc; TYPE_5__ base; TYPE_3__** engn; struct nv04_fifo* fifo; } ;
struct TYPE_7__ {struct nvkm_device* device; } ;
struct TYPE_8__ {TYPE_1__ subdev; } ;
struct TYPE_12__ {int nr; int /*<<< orphan*/  lock; TYPE_2__ engine; } ;
struct nv04_fifo {TYPE_6__ base; } ;
struct TYPE_9__ {int addr; } ;

/* Variables and functions */
 struct nv04_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_engine*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int,int) ; 
 int FUNC5 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC10(struct nvkm_fifo_chan *base,
			  struct nvkm_engine *engine)
{
	struct nv04_fifo_chan *chan = FUNC0(base);
	struct nv04_fifo *fifo = chan->fifo;
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	struct nvkm_instmem *imem = device->imem;
	unsigned long flags;
	u32 inst, reg, ctx;
	int chid;

	if (!FUNC1(engine, &reg, &ctx))
		return 0;
	inst = chan->engn[engine->subdev.index]->addr >> 4;

	FUNC8(&fifo->base.lock, flags);
	FUNC4(device, 0x002500, 0x00000001, 0x00000000);

	chid = FUNC5(device, 0x003204) & (fifo->base.nr - 1);
	if (chid == chan->base.chid)
		FUNC7(device, reg, inst);
	FUNC3(imem->ramfc);
	FUNC6(imem->ramfc, chan->ramfc + ctx, inst);
	FUNC2(imem->ramfc);

	FUNC4(device, 0x002500, 0x00000001, 0x00000001);
	FUNC9(&fifo->base.lock, flags);
	return 0;
}