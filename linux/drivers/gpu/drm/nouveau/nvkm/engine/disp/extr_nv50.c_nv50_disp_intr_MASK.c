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
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv50_disp {int super; int /*<<< orphan*/  supervisor; int /*<<< orphan*/  wq; TYPE_3__ base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_disp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_disp*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(struct nv50_disp *disp)
{
	struct nvkm_device *device = disp->base.engine.subdev.device;
	u32 intr0 = FUNC4(device, 0x610020);
	u32 intr1 = FUNC4(device, 0x610024);

	while (intr0 & 0x001f0000) {
		u32 chid = FUNC0(intr0 & 0x001f0000) - 16;
		FUNC2(disp, chid);
		intr0 &= ~(0x00010000 << chid);
	}

	while (intr0 & 0x0000001f) {
		u32 chid = FUNC0(intr0 & 0x0000001f);
		FUNC1(disp, chid);
		intr0 &= ~(0x00000001 << chid);
	}

	if (intr1 & 0x00000004) {
		FUNC3(&disp->base, 0);
		FUNC5(device, 0x610024, 0x00000004);
	}

	if (intr1 & 0x00000008) {
		FUNC3(&disp->base, 1);
		FUNC5(device, 0x610024, 0x00000008);
	}

	if (intr1 & 0x00000070) {
		disp->super = (intr1 & 0x00000070);
		FUNC6(disp->wq, &disp->supervisor);
		FUNC5(device, 0x610024, disp->super);
	}
}