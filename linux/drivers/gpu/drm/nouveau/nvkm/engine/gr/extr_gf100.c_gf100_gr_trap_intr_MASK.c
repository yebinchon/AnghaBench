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
struct gf100_gr {int gpc_nr; int rop_nr; TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  gf100_ccache_error ; 
 int /*<<< orphan*/  gf100_dispatch_error ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_gr*,int) ; 
 int /*<<< orphan*/  gf100_m2mf_error ; 
 int /*<<< orphan*/  gf100_macro_error ; 
 int /*<<< orphan*/  gf100_unk6_error ; 
 int /*<<< orphan*/  gk104_sked_error ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int,...) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct gf100_gr *gr)
{
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	char error[128];
	u32 trap = FUNC3(device, 0x400108);
	int rop, gpc;

	if (trap & 0x00000001) {
		u32 stat = FUNC3(device, 0x404000);

		FUNC4(error, sizeof(error), gf100_dispatch_error,
			       stat & 0x3fffffff);
		FUNC2(subdev, "DISPATCH %08x [%s]\n", stat, error);
		FUNC5(device, 0x404000, 0xc0000000);
		FUNC5(device, 0x400108, 0x00000001);
		trap &= ~0x00000001;
	}

	if (trap & 0x00000002) {
		u32 stat = FUNC3(device, 0x404600);

		FUNC4(error, sizeof(error), gf100_m2mf_error,
			       stat & 0x3fffffff);
		FUNC2(subdev, "M2MF %08x [%s]\n", stat, error);

		FUNC5(device, 0x404600, 0xc0000000);
		FUNC5(device, 0x400108, 0x00000002);
		trap &= ~0x00000002;
	}

	if (trap & 0x00000008) {
		u32 stat = FUNC3(device, 0x408030);

		FUNC4(error, sizeof(error), gf100_ccache_error,
			       stat & 0x3fffffff);
		FUNC2(subdev, "CCACHE %08x [%s]\n", stat, error);
		FUNC5(device, 0x408030, 0xc0000000);
		FUNC5(device, 0x400108, 0x00000008);
		trap &= ~0x00000008;
	}

	if (trap & 0x00000010) {
		u32 stat = FUNC3(device, 0x405840);
		FUNC2(subdev, "SHADER %08x, sph: 0x%06x, stage: 0x%02x\n",
			   stat, stat & 0xffffff, (stat >> 24) & 0x3f);
		FUNC5(device, 0x405840, 0xc0000000);
		FUNC5(device, 0x400108, 0x00000010);
		trap &= ~0x00000010;
	}

	if (trap & 0x00000040) {
		u32 stat = FUNC3(device, 0x40601c);

		FUNC4(error, sizeof(error), gf100_unk6_error,
			       stat & 0x3fffffff);
		FUNC2(subdev, "UNK6 %08x [%s]\n", stat, error);

		FUNC5(device, 0x40601c, 0xc0000000);
		FUNC5(device, 0x400108, 0x00000040);
		trap &= ~0x00000040;
	}

	if (trap & 0x00000080) {
		u32 stat = FUNC3(device, 0x404490);
		u32 pc = FUNC3(device, 0x404494);
		u32 op = FUNC3(device, 0x40449c);

		FUNC4(error, sizeof(error), gf100_macro_error,
			       stat & 0x1fffffff);
		FUNC2(subdev, "MACRO %08x [%s], pc: 0x%03x%s, op: 0x%08x\n",
			   stat, error, pc & 0x7ff,
			   (pc & 0x10000000) ? "" : " (invalid)",
			   op);

		FUNC5(device, 0x404490, 0xc0000000);
		FUNC5(device, 0x400108, 0x00000080);
		trap &= ~0x00000080;
	}

	if (trap & 0x00000100) {
		u32 stat = FUNC3(device, 0x407020) & 0x3fffffff;

		FUNC4(error, sizeof(error), gk104_sked_error, stat);
		FUNC2(subdev, "SKED: %08x [%s]\n", stat, error);

		if (stat)
			FUNC5(device, 0x407020, 0x40000000);
		FUNC5(device, 0x400108, 0x00000100);
		trap &= ~0x00000100;
	}

	if (trap & 0x01000000) {
		u32 stat = FUNC3(device, 0x400118);
		for (gpc = 0; stat && gpc < gr->gpc_nr; gpc++) {
			u32 mask = 0x00000001 << gpc;
			if (stat & mask) {
				FUNC1(gr, gpc);
				FUNC5(device, 0x400118, mask);
				stat &= ~mask;
			}
		}
		FUNC5(device, 0x400108, 0x01000000);
		trap &= ~0x01000000;
	}

	if (trap & 0x02000000) {
		for (rop = 0; rop < gr->rop_nr; rop++) {
			u32 statz = FUNC3(device, FUNC0(rop, 0x070));
			u32 statc = FUNC3(device, FUNC0(rop, 0x144));
			FUNC2(subdev, "ROP%d %08x %08x\n",
				 rop, statz, statc);
			FUNC5(device, FUNC0(rop, 0x070), 0xc0000000);
			FUNC5(device, FUNC0(rop, 0x144), 0xc0000000);
		}
		FUNC5(device, 0x400108, 0x02000000);
		trap &= ~0x02000000;
	}

	if (trap) {
		FUNC2(subdev, "TRAP UNHANDLED %08x\n", trap);
		FUNC5(device, 0x400108, trap);
	}
}