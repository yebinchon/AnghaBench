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
typedef  scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios_init*,scalar_t__,int) ; 
 int FUNC3 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u8 tmds = FUNC3(bios, init->offset + 1);
	u8 addr = FUNC3(bios, init->offset + 2);
	u8 mask = FUNC3(bios, init->offset + 3);
	u8 data = FUNC3(bios, init->offset + 4);
	u32 reg = FUNC1(init, tmds);

	FUNC4("TMDS\tT[0x%02x][0x%02x] &= 0x%02x |= 0x%02x\n",
	      tmds, addr, mask, data);
	init->offset += 5;

	if (reg == 0)
		return;

	FUNC2(init, reg + 0, addr | 0x00010000);
	FUNC2(init, reg + 4, data | (FUNC0(init, reg + 4) & mask));
	FUNC2(init, reg + 0, addr);
}