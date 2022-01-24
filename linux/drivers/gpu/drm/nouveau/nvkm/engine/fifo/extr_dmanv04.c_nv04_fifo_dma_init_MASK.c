#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int chid; } ;
struct nv04_fifo_chan {TYPE_4__ base; struct nv04_fifo* fifo; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_2__ engine; } ;
struct nv04_fifo {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFIFO_MODE ; 
 struct nv04_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct nvkm_fifo_chan *base)
{
	struct nv04_fifo_chan *chan = FUNC0(base);
	struct nv04_fifo *fifo = chan->fifo;
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	u32 mask = 1 << chan->base.chid;
	unsigned long flags;
	FUNC2(&fifo->base.lock, flags);
	FUNC1(device, NV04_PFIFO_MODE, mask, mask);
	FUNC3(&fifo->base.lock, flags);
}