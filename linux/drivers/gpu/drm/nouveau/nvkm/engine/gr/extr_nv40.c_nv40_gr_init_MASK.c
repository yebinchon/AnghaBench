#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_gr {int dummy; } ;
struct nvkm_device {int chipset; TYPE_4__* func; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct nv40_gr {int /*<<< orphan*/  size; TYPE_3__ base; } ;
struct TYPE_8__ {int (* resource_size ) (struct nvkm_device*,int) ;} ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV04_PGRAPH_DEBUG_0 ; 
 int NV04_PGRAPH_DEBUG_1 ; 
 int NV04_PGRAPH_DEBUG_3 ; 
 int NV04_PGRAPH_LIMIT_VIOL_PIX ; 
 int NV10_PGRAPH_CTX_CONTROL ; 
 int NV10_PGRAPH_DEBUG_4 ; 
 int NV10_PGRAPH_STATE ; 
 int NV40_PGRAPH_CTXCTL_CUR ; 
 int NV40_PGRAPH_INTR_EN ; 
 struct nv40_gr* FUNC0 (struct nvkm_gr*) ; 
 int FUNC1 (struct nvkm_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 
 int FUNC4 (struct nvkm_device*,int) ; 

int
FUNC5(struct nvkm_gr *base)
{
	struct nv40_gr *gr = FUNC0(base);
	struct nvkm_device *device = gr->base.engine.subdev.device;
	int ret, i, j;
	u32 vramsz;

	/* generate and upload context program */
	ret = FUNC1(device, &gr->size);
	if (ret)
		return ret;

	/* No context present currently */
	FUNC3(device, NV40_PGRAPH_CTXCTL_CUR, 0x00000000);

	FUNC3(device, NV03_PGRAPH_INTR   , 0xFFFFFFFF);
	FUNC3(device, NV40_PGRAPH_INTR_EN, 0xFFFFFFFF);

	FUNC3(device, NV04_PGRAPH_DEBUG_0, 0xFFFFFFFF);
	FUNC3(device, NV04_PGRAPH_DEBUG_0, 0x00000000);
	FUNC3(device, NV04_PGRAPH_DEBUG_1, 0x401287c0);
	FUNC3(device, NV04_PGRAPH_DEBUG_3, 0xe0de8055);
	FUNC3(device, NV10_PGRAPH_DEBUG_4, 0x00008000);
	FUNC3(device, NV04_PGRAPH_LIMIT_VIOL_PIX, 0x00be3c5f);

	FUNC3(device, NV10_PGRAPH_CTX_CONTROL, 0x10010100);
	FUNC3(device, NV10_PGRAPH_STATE      , 0xFFFFFFFF);

	j = FUNC2(device, 0x1540) & 0xff;
	if (j) {
		for (i = 0; !(j & 1); j >>= 1, i++)
			;
		FUNC3(device, 0x405000, i);
	}

	if (device->chipset == 0x40) {
		FUNC3(device, 0x4009b0, 0x83280fff);
		FUNC3(device, 0x4009b4, 0x000000a0);
	} else {
		FUNC3(device, 0x400820, 0x83280eff);
		FUNC3(device, 0x400824, 0x000000a0);
	}

	switch (device->chipset) {
	case 0x40:
	case 0x45:
		FUNC3(device, 0x4009b8, 0x0078e366);
		FUNC3(device, 0x4009bc, 0x0000014c);
		break;
	case 0x41:
	case 0x42: /* pciid also 0x00Cx */
	/* case 0x0120: XXX (pciid) */
		FUNC3(device, 0x400828, 0x007596ff);
		FUNC3(device, 0x40082c, 0x00000108);
		break;
	case 0x43:
		FUNC3(device, 0x400828, 0x0072cb77);
		FUNC3(device, 0x40082c, 0x00000108);
		break;
	case 0x44:
	case 0x46: /* G72 */
	case 0x4a:
	case 0x4c: /* G7x-based C51 */
	case 0x4e:
		FUNC3(device, 0x400860, 0);
		FUNC3(device, 0x400864, 0);
		break;
	case 0x47: /* G70 */
	case 0x49: /* G71 */
	case 0x4b: /* G73 */
		FUNC3(device, 0x400828, 0x07830610);
		FUNC3(device, 0x40082c, 0x0000016A);
		break;
	default:
		break;
	}

	FUNC3(device, 0x400b38, 0x2ffff800);
	FUNC3(device, 0x400b3c, 0x00006000);

	/* Tiling related stuff. */
	switch (device->chipset) {
	case 0x44:
	case 0x4a:
		FUNC3(device, 0x400bc4, 0x1003d888);
		FUNC3(device, 0x400bbc, 0xb7a7b500);
		break;
	case 0x46:
		FUNC3(device, 0x400bc4, 0x0000e024);
		FUNC3(device, 0x400bbc, 0xb7a7b520);
		break;
	case 0x4c:
	case 0x4e:
	case 0x67:
		FUNC3(device, 0x400bc4, 0x1003d888);
		FUNC3(device, 0x400bbc, 0xb7a7b540);
		break;
	default:
		break;
	}

	/* begin RAM config */
	vramsz = device->func->resource_size(device, 1) - 1;
	switch (device->chipset) {
	case 0x40:
		FUNC3(device, 0x4009A4, FUNC2(device, 0x100200));
		FUNC3(device, 0x4009A8, FUNC2(device, 0x100204));
		FUNC3(device, 0x4069A4, FUNC2(device, 0x100200));
		FUNC3(device, 0x4069A8, FUNC2(device, 0x100204));
		FUNC3(device, 0x400820, 0);
		FUNC3(device, 0x400824, 0);
		FUNC3(device, 0x400864, vramsz);
		FUNC3(device, 0x400868, vramsz);
		break;
	default:
		switch (device->chipset) {
		case 0x41:
		case 0x42:
		case 0x43:
		case 0x45:
		case 0x4e:
		case 0x44:
		case 0x4a:
			FUNC3(device, 0x4009F0, FUNC2(device, 0x100200));
			FUNC3(device, 0x4009F4, FUNC2(device, 0x100204));
			break;
		default:
			FUNC3(device, 0x400DF0, FUNC2(device, 0x100200));
			FUNC3(device, 0x400DF4, FUNC2(device, 0x100204));
			break;
		}
		FUNC3(device, 0x4069F0, FUNC2(device, 0x100200));
		FUNC3(device, 0x4069F4, FUNC2(device, 0x100204));
		FUNC3(device, 0x400840, 0);
		FUNC3(device, 0x400844, 0);
		FUNC3(device, 0x4008A0, vramsz);
		FUNC3(device, 0x4008A4, vramsz);
		break;
	}

	return 0;
}