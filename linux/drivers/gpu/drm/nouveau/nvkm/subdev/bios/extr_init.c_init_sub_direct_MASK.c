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
typedef  void* u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {void* offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 
 scalar_t__ FUNC2 (struct nvbios_init*) ; 
 void* FUNC3 (struct nvkm_bios*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u16 addr = FUNC3(bios, init->offset + 1);
	u16 save;

	FUNC4("SUB_DIRECT\t0x%04x\n", addr);

	if (FUNC1(init)) {
		save = init->offset;
		init->offset = addr;
		if (FUNC2(init)) {
			FUNC0("error parsing sub-table\n");
			return;
		}
		init->offset = save;
	}

	init->offset += 3;
}