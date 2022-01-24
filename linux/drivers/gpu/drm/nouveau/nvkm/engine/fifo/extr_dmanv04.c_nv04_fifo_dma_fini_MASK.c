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
struct nvkm_memory {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_device {TYPE_3__* imem; } ;
struct nv04_fifo_ramfc {unsigned long long bits; unsigned long long regs; unsigned long long ctxs; int ctxp; int /*<<< orphan*/  regp; } ;
struct TYPE_9__ {int chid; } ;
struct nv04_fifo_chan {int ramfc; TYPE_4__ base; struct nv04_fifo* fifo; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;
struct TYPE_10__ {int nr; int /*<<< orphan*/  lock; TYPE_2__ engine; } ;
struct nv04_fifo {TYPE_5__ base; struct nv04_fifo_ramfc* ramfc; } ;
struct TYPE_8__ {struct nvkm_memory* ramfc; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV03_PFIFO_CACHE1_GET ; 
 int /*<<< orphan*/  NV03_PFIFO_CACHE1_PUSH0 ; 
 int /*<<< orphan*/  NV03_PFIFO_CACHE1_PUSH1 ; 
 int /*<<< orphan*/  NV03_PFIFO_CACHE1_PUT ; 
 int /*<<< orphan*/  NV03_PFIFO_CACHES ; 
 int /*<<< orphan*/  NV04_PFIFO_CACHE1_DMA_PUSH ; 
 int /*<<< orphan*/  NV04_PFIFO_CACHE1_PULL0 ; 
 int /*<<< orphan*/  NV04_PFIFO_MODE ; 
 struct nv04_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nvkm_memory*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_memory*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC10(struct nvkm_fifo_chan *base)
{
	struct nv04_fifo_chan *chan = FUNC0(base);
	struct nv04_fifo *fifo = chan->fifo;
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	struct nvkm_memory *fctx = device->imem->ramfc;
	const struct nv04_fifo_ramfc *c;
	unsigned long flags;
	u32 mask = fifo->base.nr - 1;
	u32 data = chan->ramfc;
	u32 chid;

	/* prevent fifo context switches */
	FUNC8(&fifo->base.lock, flags);
	FUNC7(device, NV03_PFIFO_CACHES, 0);

	/* if this channel is active, replace it with a null context */
	chid = FUNC4(device, NV03_PFIFO_CACHE1_PUSH1) & mask;
	if (chid == chan->base.chid) {
		FUNC3(device, NV04_PFIFO_CACHE1_DMA_PUSH, 0x00000001, 0);
		FUNC7(device, NV03_PFIFO_CACHE1_PUSH0, 0);
		FUNC3(device, NV04_PFIFO_CACHE1_PULL0, 0x00000001, 0);

		c = fifo->ramfc;
		FUNC2(fctx);
		do {
			u32 rm = ((1ULL << c->bits) - 1) << c->regs;
			u32 cm = ((1ULL << c->bits) - 1) << c->ctxs;
			u32 rv = (FUNC4(device, c->regp) &  rm) >> c->regs;
			u32 cv = (FUNC5(fctx, c->ctxp + data) & ~cm);
			FUNC6(fctx, c->ctxp + data, cv | (rv << c->ctxs));
		} while ((++c)->bits);
		FUNC1(fctx);

		c = fifo->ramfc;
		do {
			FUNC7(device, c->regp, 0x00000000);
		} while ((++c)->bits);

		FUNC7(device, NV03_PFIFO_CACHE1_GET, 0);
		FUNC7(device, NV03_PFIFO_CACHE1_PUT, 0);
		FUNC7(device, NV03_PFIFO_CACHE1_PUSH1, mask);
		FUNC7(device, NV03_PFIFO_CACHE1_PUSH0, 1);
		FUNC7(device, NV04_PFIFO_CACHE1_PULL0, 1);
	}

	/* restore normal operation, after disabling dma mode */
	FUNC3(device, NV04_PFIFO_MODE, 1 << chan->base.chid, 0);
	FUNC7(device, NV03_PFIFO_CACHES, 1);
	FUNC9(&fifo->base.lock, flags);
}