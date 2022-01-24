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
struct nvkm_gr {int dummy; } ;
struct nvkm_device {int chipset; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv20_gr {int /*<<< orphan*/  ctxtab; TYPE_3__ base; } ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV03_PGRAPH_INTR_EN ; 
 int NV04_PGRAPH_DEBUG_0 ; 
 int NV04_PGRAPH_DEBUG_1 ; 
 int NV04_PGRAPH_DEBUG_3 ; 
 int NV04_PGRAPH_LIMIT_VIOL_PIX ; 
 int NV10_PGRAPH_CTX_CONTROL ; 
 int NV10_PGRAPH_DEBUG_4 ; 
 int NV10_PGRAPH_RDI_DATA ; 
 int NV10_PGRAPH_RDI_INDEX ; 
 int NV10_PGRAPH_STATE ; 
 int NV20_PGRAPH_CHANNEL_CTX_TABLE ; 
 struct nv20_gr* FUNC0 (struct nvkm_gr*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

int
FUNC4(struct nvkm_gr *base)
{
	struct nv20_gr *gr = FUNC0(base);
	struct nvkm_device *device = gr->base.engine.subdev.device;

	FUNC3(device, NV20_PGRAPH_CHANNEL_CTX_TABLE,
			  FUNC1(gr->ctxtab) >> 4);

	FUNC3(device, NV03_PGRAPH_INTR   , 0xFFFFFFFF);
	FUNC3(device, NV03_PGRAPH_INTR_EN, 0xFFFFFFFF);

	FUNC3(device, NV04_PGRAPH_DEBUG_0, 0xFFFFFFFF);
	FUNC3(device, NV04_PGRAPH_DEBUG_0, 0x00000000);
	FUNC3(device, NV04_PGRAPH_DEBUG_1, 0x401287c0);
	FUNC3(device, 0x400890, 0x01b463ff);
	FUNC3(device, NV04_PGRAPH_DEBUG_3, 0xf2de0475);
	FUNC3(device, NV10_PGRAPH_DEBUG_4, 0x00008000);
	FUNC3(device, NV04_PGRAPH_LIMIT_VIOL_PIX, 0xf04bdff6);
	FUNC3(device, 0x400B80, 0x1003d888);
	FUNC3(device, 0x400B84, 0x0c000000);
	FUNC3(device, 0x400098, 0x00000000);
	FUNC3(device, 0x40009C, 0x0005ad00);
	FUNC3(device, 0x400B88, 0x62ff00ff); /* suspiciously like PGRAPH_DEBUG_2 */
	FUNC3(device, 0x4000a0, 0x00000000);
	FUNC3(device, 0x4000a4, 0x00000008);
	FUNC3(device, 0x4008a8, 0xb784a400);
	FUNC3(device, 0x400ba0, 0x002f8685);
	FUNC3(device, 0x400ba4, 0x00231f3f);
	FUNC3(device, 0x4008a4, 0x40000020);

	if (device->chipset == 0x34) {
		FUNC3(device, NV10_PGRAPH_RDI_INDEX, 0x00EA0004);
		FUNC3(device, NV10_PGRAPH_RDI_DATA , 0x00200201);
		FUNC3(device, NV10_PGRAPH_RDI_INDEX, 0x00EA0008);
		FUNC3(device, NV10_PGRAPH_RDI_DATA , 0x00000008);
		FUNC3(device, NV10_PGRAPH_RDI_INDEX, 0x00EA0000);
		FUNC3(device, NV10_PGRAPH_RDI_DATA , 0x00000032);
		FUNC3(device, NV10_PGRAPH_RDI_INDEX, 0x00E00004);
		FUNC3(device, NV10_PGRAPH_RDI_DATA , 0x00000002);
	}

	FUNC3(device, 0x4000c0, 0x00000016);

	FUNC3(device, NV10_PGRAPH_CTX_CONTROL, 0x10000100);
	FUNC3(device, NV10_PGRAPH_STATE      , 0xFFFFFFFF);
	FUNC3(device, 0x0040075c             , 0x00000001);

	/* begin RAM config */
	/* vramsz = pci_resource_len(gr->dev->pdev, 1) - 1; */
	FUNC3(device, 0x4009A4, FUNC2(device, 0x100200));
	FUNC3(device, 0x4009A8, FUNC2(device, 0x100204));
	if (device->chipset != 0x34) {
		FUNC3(device, 0x400750, 0x00EA0000);
		FUNC3(device, 0x400754, FUNC2(device, 0x100200));
		FUNC3(device, 0x400750, 0x00EA0004);
		FUNC3(device, 0x400754, FUNC2(device, 0x100204));
	}

	return 0;
}