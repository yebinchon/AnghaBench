#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {struct nvkm_gpuobj* inst; } ;
struct gk104_fifo_chan {TYPE_1__ base; } ;

/* Variables and functions */
 struct gk104_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int FUNC1 (struct nvkm_engine*) ; 
 int FUNC2 (struct gk104_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_gpuobj*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_fifo_chan *base,
			      struct nvkm_engine *engine, bool suspend)
{
	struct gk104_fifo_chan *chan = FUNC0(base);
	struct nvkm_gpuobj *inst = chan->base.inst;
	u32 offset = FUNC1(engine);
	int ret;

	ret = FUNC2(chan);
	if (ret && suspend)
		return ret;

	if (offset) {
		FUNC4(inst);
		FUNC5(inst, (offset & 0xffff) + 0x00, 0x00000000);
		FUNC5(inst, (offset & 0xffff) + 0x04, 0x00000000);
		if ((offset >>= 16)) {
			FUNC5(inst, offset + 0x00, 0x00000000);
			FUNC5(inst, offset + 0x04, 0x00000000);
		}
		FUNC3(inst);
	}

	return ret;
}