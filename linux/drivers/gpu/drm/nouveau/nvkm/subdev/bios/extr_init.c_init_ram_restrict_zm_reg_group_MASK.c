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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios_init*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u32 addr = FUNC4(bios, init->offset + 1);
	u8  incr = FUNC3(bios, init->offset + 5);
	u8   num = FUNC3(bios, init->offset + 6);
	u8 count = FUNC1(init);
	u8 index = FUNC0(init);
	u8 i, j;

	FUNC5("RAM_RESTRICT_ZM_REG_GROUP\t"
	      "R[0x%08x] 0x%02x 0x%02x\n", addr, incr, num);
	init->offset += 7;

	for (i = 0; i < num; i++) {
		FUNC5("\tR[0x%06x] = {\n", addr);
		for (j = 0; j < count; j++) {
			u32 data = FUNC4(bios, init->offset);

			if (j == index) {
				FUNC5("\t\t0x%08x *\n", data);
				FUNC2(init, addr, data);
			} else {
				FUNC5("\t\t0x%08x\n", data);
			}

			init->offset += 4;
		}
		FUNC5("\t}\n");
		addr += incr;
	}
}