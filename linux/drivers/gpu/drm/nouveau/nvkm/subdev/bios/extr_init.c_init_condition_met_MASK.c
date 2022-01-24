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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 

__attribute__((used)) static bool
FUNC4(struct nvbios_init *init, u8 cond)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u16 table = FUNC0(init);
	if (table) {
		u32 reg = FUNC2(bios, table + (cond * 12) + 0);
		u32 msk = FUNC2(bios, table + (cond * 12) + 4);
		u32 val = FUNC2(bios, table + (cond * 12) + 8);
		FUNC3("\t[0x%02x] (R[0x%06x] & 0x%08x) == 0x%08x\n",
		      cond, reg, msk, val);
		return (FUNC1(init, reg) & msk) == val;
	}
	return false;
}