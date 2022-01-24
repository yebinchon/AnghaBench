#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct nvkm_falcon {int addr; TYPE_2__* func; TYPE_1__ engine; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  fifo; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* intr ) (struct nvkm_falcon*,struct nvkm_fifo_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int) ; 
 struct nvkm_falcon* FUNC2 (struct nvkm_engine*) ; 
 struct nvkm_fifo_chan* FUNC3 (int /*<<< orphan*/ ,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,struct nvkm_fifo_chan**) ; 
 int FUNC5 (struct nvkm_device*,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int const,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_falcon*,struct nvkm_fifo_chan*) ; 

__attribute__((used)) static void
FUNC8(struct nvkm_engine *engine)
{
	struct nvkm_falcon *falcon = FUNC2(engine);
	struct nvkm_subdev *subdev = &falcon->engine.subdev;
	struct nvkm_device *device = subdev->device;
	const u32 base = falcon->addr;
	u32 dest = FUNC5(device, base + 0x01c);
	u32 intr = FUNC5(device, base + 0x008) & dest & ~(dest >> 16);
	u32 inst = FUNC5(device, base + 0x050) & 0x3fffffff;
	struct nvkm_fifo_chan *chan;
	unsigned long flags;

	chan = FUNC3(device->fifo, (u64)inst << 12, &flags);

	if (intr & 0x00000040) {
		if (falcon->func->intr) {
			falcon->func->intr(falcon, chan);
			FUNC6(device, base + 0x004, 0x00000040);
			intr &= ~0x00000040;
		}
	}

	if (intr & 0x00000010) {
		FUNC0(subdev, "ucode halted\n");
		FUNC6(device, base + 0x004, 0x00000010);
		intr &= ~0x00000010;
	}

	if (intr)  {
		FUNC1(subdev, "intr %08x\n", intr);
		FUNC6(device, base + 0x004, intr);
	}

	FUNC4(device->fifo, flags, &chan);
}