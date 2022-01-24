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
typedef  scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 
 scalar_t__ FUNC2 (struct nvbios_init*) ; 
 scalar_t__ FUNC3 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u8  type = FUNC3(bios, init->offset + 1);
	u8 count = FUNC2(init);
	u8 strap = FUNC1(init);
	u8 cconf;

	FUNC5("RAM_RESTRICT_PLL\t0x%02x\n", type);
	init->offset += 2;

	for (cconf = 0; cconf < count; cconf++) {
		u32 freq = FUNC4(bios, init->offset);

		if (cconf == strap) {
			FUNC5("%dkHz *\n", freq);
			FUNC0(init, type, freq);
		} else {
			FUNC5("%dkHz\n", freq);
		}

		init->offset += 4;
	}
}