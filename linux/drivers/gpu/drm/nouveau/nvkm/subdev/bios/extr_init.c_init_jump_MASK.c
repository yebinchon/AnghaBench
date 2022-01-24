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
typedef  scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u16 offset = FUNC1(bios, init->offset + 1);

	FUNC2("JUMP\t0x%04x\n", offset);

	if (FUNC0(init))
		init->offset = offset;
	else
		init->offset += 3;
}