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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv50_gr {TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_gr*,int,int,int,int,char*) ; 
 int /*<<< orphan*/  nv50_gr_trap_ccache ; 
 int /*<<< orphan*/  nv50_gr_trap_m2mf ; 
 int /*<<< orphan*/  nv50_gr_trap_strmout ; 
 int /*<<< orphan*/  nv50_gr_trap_vfetch ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,...) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nv50_gr *gr, u32 display,
		     int chid, u64 inst, const char *name)
{
	struct nvkm_subdev *subdev = &gr->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 status = FUNC2(device, 0x400108);
	u32 ustatus;
	char msg[128];

	if (!status && display) {
		FUNC1(subdev, "TRAP: no units reporting traps?\n");
		return 1;
	}

	/* DISPATCH: Relays commands to other units and handles NOTIFY,
	 * COND, QUERY. If you get a trap from it, the command is still stuck
	 * in DISPATCH and you need to do something about it. */
	if (status & 0x001) {
		ustatus = FUNC2(device, 0x400804) & 0x7fffffff;
		if (!ustatus && display) {
			FUNC1(subdev, "TRAP_DISPATCH - no ustatus?\n");
		}

		FUNC4(device, 0x400500, 0x00000000);

		/* Known to be triggered by screwed up NOTIFY and COND... */
		if (ustatus & 0x00000001) {
			u32 addr = FUNC2(device, 0x400808);
			u32 subc = (addr & 0x00070000) >> 16;
			u32 mthd = (addr & 0x00001ffc);
			u32 datal = FUNC2(device, 0x40080c);
			u32 datah = FUNC2(device, 0x400810);
			u32 class = FUNC2(device, 0x400814);
			u32 r848 = FUNC2(device, 0x400848);

			FUNC1(subdev, "TRAP DISPATCH_FAULT\n");
			if (display && (addr & 0x80000000)) {
				FUNC1(subdev,
					   "ch %d [%010llx %s] subc %d "
					   "class %04x mthd %04x data %08x%08x "
					   "400808 %08x 400848 %08x\n",
					   chid, inst, name, subc, class, mthd,
					   datah, datal, addr, r848);
			} else
			if (display) {
				FUNC1(subdev, "no stuck command?\n");
			}

			FUNC4(device, 0x400808, 0);
			FUNC4(device, 0x4008e8, FUNC2(device, 0x4008e8) & 3);
			FUNC4(device, 0x400848, 0);
			ustatus &= ~0x00000001;
		}

		if (ustatus & 0x00000002) {
			u32 addr = FUNC2(device, 0x40084c);
			u32 subc = (addr & 0x00070000) >> 16;
			u32 mthd = (addr & 0x00001ffc);
			u32 data = FUNC2(device, 0x40085c);
			u32 class = FUNC2(device, 0x400814);

			FUNC1(subdev, "TRAP DISPATCH_QUERY\n");
			if (display && (addr & 0x80000000)) {
				FUNC1(subdev,
					   "ch %d [%010llx %s] subc %d "
					   "class %04x mthd %04x data %08x "
					   "40084c %08x\n", chid, inst, name,
					   subc, class, mthd, data, addr);
			} else
			if (display) {
				FUNC1(subdev, "no stuck command?\n");
			}

			FUNC4(device, 0x40084c, 0);
			ustatus &= ~0x00000002;
		}

		if (ustatus && display) {
			FUNC1(subdev, "TRAP_DISPATCH "
					   "(unknown %08x)\n", ustatus);
		}

		FUNC4(device, 0x400804, 0xc0000000);
		FUNC4(device, 0x400108, 0x001);
		status &= ~0x001;
		if (!status)
			return 0;
	}

	/* M2MF: Memory to memory copy engine. */
	if (status & 0x002) {
		u32 ustatus = FUNC2(device, 0x406800) & 0x7fffffff;
		if (display) {
			FUNC3(msg, sizeof(msg),
				       nv50_gr_trap_m2mf, ustatus);
			FUNC1(subdev, "TRAP_M2MF %08x [%s]\n",
				   ustatus, msg);
			FUNC1(subdev, "TRAP_M2MF %08x %08x %08x %08x\n",
				   FUNC2(device, 0x406804),
				   FUNC2(device, 0x406808),
				   FUNC2(device, 0x40680c),
				   FUNC2(device, 0x406810));
		}

		/* No sane way found yet -- just reset the bugger. */
		FUNC4(device, 0x400040, 2);
		FUNC4(device, 0x400040, 0);
		FUNC4(device, 0x406800, 0xc0000000);
		FUNC4(device, 0x400108, 0x002);
		status &= ~0x002;
	}

	/* VFETCH: Fetches data from vertex buffers. */
	if (status & 0x004) {
		u32 ustatus = FUNC2(device, 0x400c04) & 0x7fffffff;
		if (display) {
			FUNC3(msg, sizeof(msg),
				       nv50_gr_trap_vfetch, ustatus);
			FUNC1(subdev, "TRAP_VFETCH %08x [%s]\n",
				   ustatus, msg);
			FUNC1(subdev, "TRAP_VFETCH %08x %08x %08x %08x\n",
				   FUNC2(device, 0x400c00),
				   FUNC2(device, 0x400c08),
				   FUNC2(device, 0x400c0c),
				   FUNC2(device, 0x400c10));
		}

		FUNC4(device, 0x400c04, 0xc0000000);
		FUNC4(device, 0x400108, 0x004);
		status &= ~0x004;
	}

	/* STRMOUT: DirectX streamout / OpenGL transform feedback. */
	if (status & 0x008) {
		ustatus = FUNC2(device, 0x401800) & 0x7fffffff;
		if (display) {
			FUNC3(msg, sizeof(msg),
				       nv50_gr_trap_strmout, ustatus);
			FUNC1(subdev, "TRAP_STRMOUT %08x [%s]\n",
				   ustatus, msg);
			FUNC1(subdev, "TRAP_STRMOUT %08x %08x %08x %08x\n",
				   FUNC2(device, 0x401804),
				   FUNC2(device, 0x401808),
				   FUNC2(device, 0x40180c),
				   FUNC2(device, 0x401810));
		}

		/* No sane way found yet -- just reset the bugger. */
		FUNC4(device, 0x400040, 0x80);
		FUNC4(device, 0x400040, 0);
		FUNC4(device, 0x401800, 0xc0000000);
		FUNC4(device, 0x400108, 0x008);
		status &= ~0x008;
	}

	/* CCACHE: Handles code and c[] caches and fills them. */
	if (status & 0x010) {
		ustatus = FUNC2(device, 0x405018) & 0x7fffffff;
		if (display) {
			FUNC3(msg, sizeof(msg),
				       nv50_gr_trap_ccache, ustatus);
			FUNC1(subdev, "TRAP_CCACHE %08x [%s]\n",
				   ustatus, msg);
			FUNC1(subdev, "TRAP_CCACHE %08x %08x %08x %08x "
					   "%08x %08x %08x\n",
				   FUNC2(device, 0x405000),
				   FUNC2(device, 0x405004),
				   FUNC2(device, 0x405008),
				   FUNC2(device, 0x40500c),
				   FUNC2(device, 0x405010),
				   FUNC2(device, 0x405014),
				   FUNC2(device, 0x40501c));
		}

		FUNC4(device, 0x405018, 0xc0000000);
		FUNC4(device, 0x400108, 0x010);
		status &= ~0x010;
	}

	/* Unknown, not seen yet... 0x402000 is the only trap status reg
	 * remaining, so try to handle it anyway. Perhaps related to that
	 * unknown DMA slot on tesla? */
	if (status & 0x20) {
		ustatus = FUNC2(device, 0x402000) & 0x7fffffff;
		if (display)
			FUNC1(subdev, "TRAP_UNKC04 %08x\n", ustatus);
		FUNC4(device, 0x402000, 0xc0000000);
		/* no status modifiction on purpose */
	}

	/* TEXTURE: CUDA texturing units */
	if (status & 0x040) {
		FUNC0(gr, 6, 0x408900, 0x408600, display,
				    "TRAP_TEXTURE");
		FUNC4(device, 0x400108, 0x040);
		status &= ~0x040;
	}

	/* MP: CUDA execution engines. */
	if (status & 0x080) {
		FUNC0(gr, 7, 0x408314, 0x40831c, display,
				    "TRAP_MP");
		FUNC4(device, 0x400108, 0x080);
		status &= ~0x080;
	}

	/* PROP:  Handles TP-initiated uncached memory accesses:
	 * l[], g[], stack, 2d surfaces, render targets. */
	if (status & 0x100) {
		FUNC0(gr, 8, 0x408e08, 0x408708, display,
				    "TRAP_PROP");
		FUNC4(device, 0x400108, 0x100);
		status &= ~0x100;
	}

	if (status) {
		if (display)
			FUNC1(subdev, "TRAP: unknown %08x\n", status);
		FUNC4(device, 0x400108, status);
	}

	return 1;
}