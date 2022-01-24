#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {int /*<<< orphan*/  nested; int /*<<< orphan*/  offset; TYPE_2__* subdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* exec ) (struct nvbios_init*) ;} ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 TYPE_3__* init_opcode ; 
 size_t FUNC2 (struct nvkm_bios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios_init*) ; 

int
FUNC4(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;

	init->nested++;
	while (init->offset) {
		u8 opcode = FUNC2(bios, init->offset);
		if (opcode >= FUNC0(init_opcode) ||
		    !init_opcode[opcode].exec) {
			FUNC1("unknown opcode 0x%02x\n", opcode);
			return -EINVAL;
		}

		init_opcode[opcode].exec(init);
	}
	init->nested--;
	return 0;
}