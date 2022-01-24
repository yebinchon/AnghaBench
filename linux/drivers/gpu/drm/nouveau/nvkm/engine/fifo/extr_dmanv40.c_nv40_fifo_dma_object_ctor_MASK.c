#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_object {int handle; TYPE_3__* engine; } ;
struct nvkm_instmem {int /*<<< orphan*/  ramht; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_12__ {int chid; } ;
struct nv04_fifo_chan {TYPE_8__* fifo; TYPE_4__ base; } ;
struct TYPE_13__ {int /*<<< orphan*/  mutex; TYPE_1__* device; } ;
struct TYPE_14__ {TYPE_5__ subdev; } ;
struct TYPE_15__ {TYPE_6__ engine; } ;
struct TYPE_16__ {TYPE_7__ base; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_11__ {TYPE_2__ subdev; } ;
struct TYPE_9__ {struct nvkm_instmem* imem; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NVKM_ENGINE_DMAOBJ 131 
#define  NVKM_ENGINE_GR 130 
#define  NVKM_ENGINE_MPEG 129 
#define  NVKM_ENGINE_SW 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nv04_fifo_chan* FUNC3 (struct nvkm_fifo_chan*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nvkm_object*,int,int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_fifo_chan *base,
			  struct nvkm_object *object)
{
	struct nv04_fifo_chan *chan = FUNC3(base);
	struct nvkm_instmem *imem = chan->fifo->base.engine.subdev.device->imem;
	u32 context = chan->base.chid << 23;
	u32 handle  = object->handle;
	int hash;

	switch (object->engine->subdev.index) {
	case NVKM_ENGINE_DMAOBJ:
	case NVKM_ENGINE_SW    : context |= 0x00000000; break;
	case NVKM_ENGINE_GR    : context |= 0x00100000; break;
	case NVKM_ENGINE_MPEG  : context |= 0x00200000; break;
	default:
		FUNC0(1);
		return -EINVAL;
	}

	FUNC1(&chan->fifo->base.engine.subdev.mutex);
	hash = FUNC4(imem->ramht, object, chan->base.chid, 4,
				 handle, context);
	FUNC2(&chan->fifo->base.engine.subdev.mutex);
	return hash;
}