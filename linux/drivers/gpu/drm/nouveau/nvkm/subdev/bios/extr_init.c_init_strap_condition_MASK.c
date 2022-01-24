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
typedef  int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int) ; 
 int FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u32 mask = FUNC2(bios, init->offset + 1);
	u32 value = FUNC2(bios, init->offset + 5);

	FUNC3("STRAP_CONDITION\t(R[0x101000] & 0x%08x) == 0x%08x\n", mask, value);
	init->offset += 9;

	if ((FUNC1(init, 0x101000) & mask) != value)
		FUNC0(init, false);
}