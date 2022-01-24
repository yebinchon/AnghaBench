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
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_init*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nvbios_init*,int,int) ; 
 int FUNC4 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC5 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC7(struct nvbios_init *init)
{
	struct nvkm_bios *bios = init->subdev->device->bios;
	u32 saddr = FUNC5(bios, init->offset + 1);
	u8 sshift = FUNC4(bios, init->offset + 5);
	u8  smask = FUNC4(bios, init->offset + 6);
	u8  index = FUNC4(bios, init->offset + 7);
	u32 daddr = FUNC5(bios, init->offset + 8);
	u32 dmask = FUNC5(bios, init->offset + 12);
	u8  shift = FUNC4(bios, init->offset + 16);
	u32 data;

	FUNC6("INIT_XLAT\tR[0x%06x] &= 0x%08x |= "
	      "(X%02x((R[0x%06x] %s 0x%02x) & 0x%02x) << 0x%02x)\n",
	      daddr, dmask, index, saddr, (sshift & 0x80) ? "<<" : ">>",
	      (sshift & 0x80) ? (0x100 - sshift) : sshift, smask, shift);
	init->offset += 17;

	data = FUNC2(FUNC1(init, saddr), sshift) & smask;
	data = FUNC3(init, index, data) << shift;
	FUNC0(init, daddr, ~dmask, data);
}