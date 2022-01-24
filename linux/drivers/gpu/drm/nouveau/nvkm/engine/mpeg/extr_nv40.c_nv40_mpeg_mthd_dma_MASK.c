#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_instmem {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  mpeg; struct nvkm_instmem* imem; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv31_mpeg {TYPE_1__ engine; } ;

/* Variables and functions */
 struct nv31_mpeg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int,int,int,int) ; 
 int FUNC2 (struct nvkm_instmem*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int,int) ; 

bool
FUNC5(struct nvkm_device *device, u32 mthd, u32 data)
{
	struct nvkm_instmem *imem = device->imem;
	struct nv31_mpeg *mpeg = FUNC0(device->mpeg);
	struct nvkm_subdev *subdev = &mpeg->engine.subdev;
	u32 inst = data << 4;
	u32 dma0 = FUNC2(imem, inst + 0);
	u32 dma1 = FUNC2(imem, inst + 4);
	u32 dma2 = FUNC2(imem, inst + 8);
	u32 base = (dma2 & 0xfffff000) | (dma0 >> 20);
	u32 size = dma1 + 1;

	/* only allow linear DMA objects */
	if (!(dma0 & 0x00002000)) {
		FUNC1(subdev, "inst %08x dma0 %08x dma1 %08x dma2 %08x\n",
			   inst, dma0, dma1, dma2);
		return false;
	}

	if (mthd == 0x0190) {
		/* DMA_CMD */
		FUNC3(device, 0x00b300, 0x00030000, (dma0 & 0x00030000));
		FUNC4(device, 0x00b334, base);
		FUNC4(device, 0x00b324, size);
	} else
	if (mthd == 0x01a0) {
		/* DMA_DATA */
		FUNC3(device, 0x00b300, 0x000c0000, (dma0 & 0x00030000) << 2);
		FUNC4(device, 0x00b360, base);
		FUNC4(device, 0x00b364, size);
	} else {
		/* DMA_IMAGE, VRAM only */
		if (dma0 & 0x00030000)
			return false;

		FUNC4(device, 0x00b370, base);
		FUNC4(device, 0x00b374, size);
	}

	return true;
}