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
struct nv50_disp {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nv50_disp *disp, int head)
{
	struct nvkm_subdev *subdev = &disp->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 stat = FUNC1(device, 0x611800 + (head * 0x04));

	/* LAST_DATA, LOADV. */
	if (stat & 0x00000003) {
		FUNC3(device, 0x611800 + (head * 0x04), stat & 0x00000003);
		stat &= ~0x00000003;
	}

	if (stat & 0x00000004) {
		FUNC0(&disp->base, head);
		FUNC3(device, 0x611800 + (head * 0x04), 0x00000004);
		stat &= ~0x00000004;
	}

	if (stat) {
		FUNC2(subdev, "head %08x\n", stat);
		FUNC3(device, 0x611800 + (head * 0x04), stat);
	}
}