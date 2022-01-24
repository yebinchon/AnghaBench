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
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (struct nvbios_init*,int,int,int) ; 
 int FUNC3 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u8 index = FUNC3(bios, init->offset + 1);
	u8  addr = FUNC3(bios, init->offset + 2);
	u8   reg = FUNC3(bios, init->offset + 3);
	u8  mask = FUNC3(bios, init->offset + 4);
	u8  data = FUNC3(bios, init->offset + 5);
	u8 value;

	FUNC4("I2C_IF\tI2C[0x%02x][0x%02x][0x%02x] & 0x%02x == 0x%02x\n",
	      index, addr, reg, mask, data);
	init->offset += 6;
	FUNC0(init, true);

	value = FUNC2(init, index, addr, reg);
	if ((value & mask) != data)
		FUNC1(init, false);

	FUNC0(init, false);
}