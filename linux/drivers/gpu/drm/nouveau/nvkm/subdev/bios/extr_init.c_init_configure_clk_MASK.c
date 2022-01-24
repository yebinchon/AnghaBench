#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {int major; } ;
struct nvkm_bios {TYPE_1__ version; } ;
struct nvbios_init {int offset; TYPE_3__* subdev; } ;
struct TYPE_6__ {TYPE_2__* device; } ;
struct TYPE_5__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int FUNC0 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios_init*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios_init*,int,int) ; 
 int FUNC4 (struct nvkm_bios*,int) ; 
 int FUNC5 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u16 mdata, clock;

	FUNC6("CONFIGURE_CLK\n");
	init->offset += 1;

	if (bios->version.major > 2) {
		FUNC1(init);
		return;
	}
	FUNC2(init, true);

	mdata = FUNC0(init);

	/* NVPLL */
	clock = FUNC5(bios, mdata + 4) * 10;
	FUNC3(init, 0x680500, clock);

	/* MPLL */
	clock = FUNC5(bios, mdata + 2) * 10;
	if (FUNC4(bios, mdata) & 0x01)
		clock *= 2;
	FUNC3(init, 0x680504, clock);

	FUNC2(init, false);
}