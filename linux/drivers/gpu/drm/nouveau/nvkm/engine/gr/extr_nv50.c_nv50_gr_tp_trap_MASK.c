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
struct nvkm_device {int chipset; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv50_gr {TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_gr*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_gr*,int,int,int) ; 
 int /*<<< orphan*/  nv50_mpc_traps ; 
 int /*<<< orphan*/  nv50_tex_traps ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,...) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct nv50_gr *gr, int type, u32 ustatus_old,
		  u32 ustatus_new, int display, const char *name)
{
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 units = FUNC3(device, 0x1540);
	int tps = 0;
	int i, r;
	char msg[128];
	u32 ustatus_addr, ustatus;
	for (i = 0; i < 16; i++) {
		if (!(units & (1 << i)))
			continue;
		if (device->chipset < 0xa0)
			ustatus_addr = ustatus_old + (i << 12);
		else
			ustatus_addr = ustatus_new + (i << 11);
		ustatus = FUNC3(device, ustatus_addr) & 0x7fffffff;
		if (!ustatus)
			continue;
		tps++;
		switch (type) {
		case 6: /* texture error... unknown for now */
			if (display) {
				FUNC2(subdev, "magic set %d:\n", i);
				for (r = ustatus_addr + 4; r <= ustatus_addr + 0x10; r += 4)
					FUNC2(subdev, "\t%08x: %08x\n", r,
						   FUNC3(device, r));
				if (ustatus) {
					FUNC4(msg, sizeof(msg),
						       nv50_tex_traps, ustatus);
					FUNC2(subdev,
						   "%s - TP%d: %08x [%s]\n",
						   name, i, ustatus, msg);
					ustatus = 0;
				}
			}
			break;
		case 7: /* MP error */
			if (ustatus & 0x04030000) {
				FUNC0(gr, i, display);
				ustatus &= ~0x04030000;
			}
			if (ustatus && display) {
				FUNC4(msg, sizeof(msg),
					       nv50_mpc_traps, ustatus);
				FUNC2(subdev, "%s - TP%d: %08x [%s]\n",
					   name, i, ustatus, msg);
				ustatus = 0;
			}
			break;
		case 8: /* PROP error */
			if (display)
				FUNC1(
						gr, ustatus_addr, ustatus, i);
			ustatus = 0;
			break;
		}
		if (ustatus) {
			if (display)
				FUNC2(subdev, "%s - TP%d: Unhandled ustatus %08x\n", name, i, ustatus);
		}
		FUNC6(device, ustatus_addr, 0xc0000000);
	}

	if (!tps && display)
		FUNC5(subdev, "%s - No TPs claiming errors?\n", name);
}