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
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct gf100_gr {int /*<<< orphan*/  firmware; TYPE_2__ base; } ;

/* Variables and functions */
 int E_BAD_FWMTHD ; 
 int /*<<< orphan*/  FUNC0 (struct gf100_gr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,...) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct gf100_gr *gr)
{
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC2(device, 0x409c18);

	if (!gr->firmware && (stat & 0x00000001)) {
		u32 code = FUNC2(device, 0x409814);
		if (code == E_BAD_FWMTHD) {
			u32 class = FUNC2(device, 0x409808);
			u32  addr = FUNC2(device, 0x40980c);
			u32  subc = (addr & 0x00070000) >> 16;
			u32  mthd = (addr & 0x00003ffc);
			u32  data = FUNC2(device, 0x409810);

			FUNC1(subdev, "FECS MTHD subc %d class %04x "
					   "mthd %04x data %08x\n",
				   subc, class, mthd, data);
		} else {
			FUNC1(subdev, "FECS ucode error %d\n", code);
		}
		FUNC3(device, 0x409c20, 0x00000001);
		stat &= ~0x00000001;
	}

	if (!gr->firmware && (stat & 0x00080000)) {
		FUNC1(subdev, "FECS watchdog timeout\n");
		FUNC0(gr);
		FUNC3(device, 0x409c20, 0x00080000);
		stat &= ~0x00080000;
	}

	if (stat) {
		FUNC1(subdev, "FECS %08x\n", stat);
		FUNC0(gr);
		FUNC3(device, 0x409c20, stat);
	}
}