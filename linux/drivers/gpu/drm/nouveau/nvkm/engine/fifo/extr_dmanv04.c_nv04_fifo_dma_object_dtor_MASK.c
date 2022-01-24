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
struct nvkm_instmem {int /*<<< orphan*/  ramht; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nv04_fifo_chan {TYPE_3__* fifo; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; TYPE_1__* device; } ;
struct TYPE_9__ {TYPE_5__ subdev; } ;
struct TYPE_7__ {TYPE_4__ engine; } ;
struct TYPE_8__ {TYPE_2__ base; } ;
struct TYPE_6__ {struct nvkm_instmem* imem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nv04_fifo_chan* FUNC2 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct nvkm_fifo_chan *base, int cookie)
{
	struct nv04_fifo_chan *chan = FUNC2(base);
	struct nvkm_instmem *imem = chan->fifo->base.engine.subdev.device->imem;

	FUNC0(&chan->fifo->base.engine.subdev.mutex);
	FUNC3(imem->ramht, cookie);
	FUNC1(&chan->fifo->base.engine.subdev.mutex);
}