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
typedef  int u8 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int,int,int,int) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,...) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u8 index = FUNC2(bios, init->offset + 1);
	u8  addr = FUNC2(bios, init->offset + 2) >> 1;
	u8 count = FUNC2(bios, init->offset + 3);

	FUNC3("I2C_BYTE\tI2C[0x%02x][0x%02x]\n", index, addr);
	init->offset += 4;

	while (count--) {
		u8  reg = FUNC2(bios, init->offset + 0);
		u8 mask = FUNC2(bios, init->offset + 1);
		u8 data = FUNC2(bios, init->offset + 2);
		int val;

		FUNC3("\t[0x%02x] &= 0x%02x |= 0x%02x\n", reg, mask, data);
		init->offset += 3;

		val = FUNC0(init, index, addr, reg);
		if (val < 0)
			continue;
		FUNC1(init, index, addr, reg, (val & mask) | data);
	}
}