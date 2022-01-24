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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u8  macro = FUNC2(bios, init->offset + 1);
	u16 table;

	FUNC4("MACRO\t0x%02x\n", macro);

	table = FUNC0(init);
	if (table) {
		u32 addr = FUNC3(bios, table + (macro * 8) + 0);
		u32 data = FUNC3(bios, table + (macro * 8) + 4);
		FUNC4("\t\tR[0x%06x] = 0x%08x\n", addr, data);
		FUNC1(init, addr, data);
	}

	init->offset += 2;
}