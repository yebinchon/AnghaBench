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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_8__ {size_t index; } ;
struct nvkm_engine {TYPE_4__ subdev; } ;
struct TYPE_5__ {struct nvkm_gpuobj* inst; } ;
struct gf100_fifo_chan {TYPE_3__* engn; TYPE_1__ base; } ;
struct TYPE_7__ {TYPE_2__* vma; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 struct gf100_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 scalar_t__ FUNC1 (struct nvkm_engine*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_gpuobj*,scalar_t__ const,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_fifo_chan *base,
			      struct nvkm_engine *engine)
{
	const u32 offset = FUNC1(engine);
	struct gf100_fifo_chan *chan = FUNC0(base);
	struct nvkm_gpuobj *inst = chan->base.inst;

	if (offset) {
		u64 addr = chan->engn[engine->subdev.index].vma->addr;
		FUNC4(inst);
		FUNC5(inst, offset + 0x00, FUNC2(addr) | 4);
		FUNC5(inst, offset + 0x04, FUNC6(addr));
		FUNC3(inst);
	}

	return 0;
}