#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {TYPE_1__ engine; } ;
struct gf100_gr {TYPE_3__* func; TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* trap_mp ) (struct gf100_gr*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int,int,int) ; 
 int FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gf100_gr*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct gf100_gr *gr, int gpc, int tpc)
{
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC2(device, FUNC0(gpc, tpc, 0x0508));

	if (stat & 0x00000001) {
		u32 trap = FUNC2(device, FUNC0(gpc, tpc, 0x0224));
		FUNC1(subdev, "GPC%d/TPC%d/TEX: %08x\n", gpc, tpc, trap);
		FUNC3(device, FUNC0(gpc, tpc, 0x0224), 0xc0000000);
		stat &= ~0x00000001;
	}

	if (stat & 0x00000002) {
		gr->func->trap_mp(gr, gpc, tpc);
		stat &= ~0x00000002;
	}

	if (stat & 0x00000004) {
		u32 trap = FUNC2(device, FUNC0(gpc, tpc, 0x0084));
		FUNC1(subdev, "GPC%d/TPC%d/POLY: %08x\n", gpc, tpc, trap);
		FUNC3(device, FUNC0(gpc, tpc, 0x0084), 0xc0000000);
		stat &= ~0x00000004;
	}

	if (stat & 0x00000008) {
		u32 trap = FUNC2(device, FUNC0(gpc, tpc, 0x048c));
		FUNC1(subdev, "GPC%d/TPC%d/L1C: %08x\n", gpc, tpc, trap);
		FUNC3(device, FUNC0(gpc, tpc, 0x048c), 0xc0000000);
		stat &= ~0x00000008;
	}

	if (stat & 0x00000010) {
		u32 trap = FUNC2(device, FUNC0(gpc, tpc, 0x0430));
		FUNC1(subdev, "GPC%d/TPC%d/MPC: %08x\n", gpc, tpc, trap);
		FUNC3(device, FUNC0(gpc, tpc, 0x0430), 0xc0000000);
		stat &= ~0x00000010;
	}

	if (stat) {
		FUNC1(subdev, "GPC%d/TPC%d/%08x: unknown\n", gpc, tpc, stat);
	}
}