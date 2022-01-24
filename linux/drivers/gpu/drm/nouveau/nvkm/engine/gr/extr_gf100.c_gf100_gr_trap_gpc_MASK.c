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
struct gf100_gr {int* tpc_nr; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_gr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gf100_gr*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,int,int) ; 
 int FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct gf100_gr *gr, int gpc)
{
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC4(device, FUNC0(gpc, 0x2c90));
	int tpc;

	if (stat & 0x00000001) {
		FUNC1(gr, gpc);
		stat &= ~0x00000001;
	}

	if (stat & 0x00000002) {
		u32 trap = FUNC4(device, FUNC0(gpc, 0x0900));
		FUNC3(subdev, "GPC%d/ZCULL: %08x\n", gpc, trap);
		FUNC5(device, FUNC0(gpc, 0x0900), 0xc0000000);
		stat &= ~0x00000002;
	}

	if (stat & 0x00000004) {
		u32 trap = FUNC4(device, FUNC0(gpc, 0x1028));
		FUNC3(subdev, "GPC%d/CCACHE: %08x\n", gpc, trap);
		FUNC5(device, FUNC0(gpc, 0x1028), 0xc0000000);
		stat &= ~0x00000004;
	}

	if (stat & 0x00000008) {
		u32 trap = FUNC4(device, FUNC0(gpc, 0x0824));
		FUNC3(subdev, "GPC%d/ESETUP: %08x\n", gpc, trap);
		FUNC5(device, FUNC0(gpc, 0x0824), 0xc0000000);
		stat &= ~0x00000009;
	}

	for (tpc = 0; tpc < gr->tpc_nr[gpc]; tpc++) {
		u32 mask = 0x00010000 << tpc;
		if (stat & mask) {
			FUNC2(gr, gpc, tpc);
			FUNC5(device, FUNC0(gpc, 0x2c90), mask);
			stat &= ~mask;
		}
	}

	if (stat) {
		FUNC3(subdev, "GPC%d/%08x: unknown\n", gpc, stat);
	}
}