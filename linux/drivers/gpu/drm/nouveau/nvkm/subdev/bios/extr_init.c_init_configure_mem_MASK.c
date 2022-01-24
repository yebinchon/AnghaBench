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
typedef  int u16 ;
struct TYPE_6__ {int major; } ;
struct nvkm_bios {TYPE_3__ version; } ;
struct nvbios_init {int offset; TYPE_2__* subdev; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*) ; 
 int FUNC1 (struct nvkm_bios*) ; 
 int FUNC2 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvbios_init*,int) ; 
 int FUNC5 (struct nvbios_init*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvbios_init*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvbios_init*,int,int,int) ; 
 int FUNC8 (struct nvkm_bios*,int) ; 
 int FUNC9 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u16 mdata, sdata;
	u32 addr, data;

	FUNC10("CONFIGURE_MEM\n");
	init->offset += 1;

	if (bios->version.major > 2) {
		FUNC3(init);
		return;
	}
	FUNC4(init, true);

	mdata = FUNC2(init);
	sdata = FUNC1(bios);
	if (FUNC8(bios, mdata) & 0x01)
		sdata = FUNC0(bios);
	mdata += 6; /* skip to data */

	data = FUNC5(init, 0x03c4, 0x01);
	FUNC7(init, 0x03c4, 0x01, data | 0x20);

	for (; (addr = FUNC9(bios, sdata)) != 0xffffffff; sdata += 4) {
		switch (addr) {
		case 0x10021c: /* CKE_NORMAL */
		case 0x1002d0: /* CMD_REFRESH */
		case 0x1002d4: /* CMD_PRECHARGE */
			data = 0x00000001;
			break;
		default:
			data = FUNC9(bios, mdata);
			mdata += 4;
			if (data == 0xffffffff)
				continue;
			break;
		}

		FUNC6(init, addr, data);
	}

	FUNC4(init, false);
}