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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct nvkm_xtensa {int addr; TYPE_2__* func; TYPE_1__ engine; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fifo_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_device*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int const,int) ; 
 struct nvkm_xtensa* FUNC5 (struct nvkm_engine*) ; 

__attribute__((used)) static void
FUNC6(struct nvkm_engine *engine)
{
	struct nvkm_xtensa *xtensa = FUNC5(engine);
	struct nvkm_subdev *subdev = &xtensa->engine.subdev;
	struct nvkm_device *device = subdev->device;
	const u32 base = xtensa->addr;
	u32 unk104 = FUNC2(device, base + 0xd04);
	u32 intr = FUNC2(device, base + 0xc20);
	u32 chan = FUNC2(device, base + 0xc28);
	u32 unk10c = FUNC2(device, base + 0xd0c);

	if (intr & 0x10)
		FUNC3(subdev, "Watchdog interrupt, engine hung.\n");
	FUNC4(device, base + 0xc20, intr);
	intr = FUNC2(device, base + 0xc20);
	if (unk104 == 0x10001 && unk10c == 0x200 && chan && !intr) {
		FUNC0(subdev, "Enabling FIFO_CTRL\n");
		FUNC1(device, xtensa->addr + 0xd94, 0, xtensa->func->fifo_val);
	}
}