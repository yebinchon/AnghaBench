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
typedef  int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nvbios_init*,int,int) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 
 int FUNC3 (struct nvkm_bios*,int) ; 

__attribute__((used)) static bool
FUNC4(struct nvbios_init *init, u8 cond)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u16 table = FUNC0(init);
	if (table) {
		u16 port = FUNC3(bios, table + (cond * 9) + 0);
		u8 index = FUNC2(bios, table + (cond * 9) + 2);
		u8  mask = FUNC2(bios, table + (cond * 9) + 3);
		u8 shift = FUNC2(bios, table + (cond * 9) + 4);
		u16 data = FUNC3(bios, table + (cond * 9) + 5);
		u8 dmask = FUNC2(bios, table + (cond * 9) + 7);
		u8 value = FUNC2(bios, table + (cond * 9) + 8);
		u8 ioval = (FUNC1(init, port, index) & mask) >> shift;
		return (FUNC2(bios, data + ioval) & dmask) == value;
	}
	return false;
}