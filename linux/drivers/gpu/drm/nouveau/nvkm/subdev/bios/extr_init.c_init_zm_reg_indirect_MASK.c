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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u32  reg = FUNC2(bios, init->offset + 1);
	u16 addr = FUNC1(bios, init->offset + 5);
	u32 data = FUNC2(bios, addr);

	FUNC3("ZM_REG_INDIRECT\tR[0x%06x] = VBIOS[0x%04x] = 0x%08x\n",
	      reg, addr, data);
	init->offset += 7;

	FUNC0(init, addr, data);
}