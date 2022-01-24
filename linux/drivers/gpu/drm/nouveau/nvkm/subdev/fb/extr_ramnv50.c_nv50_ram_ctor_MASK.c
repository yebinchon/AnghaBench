#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_ram_func {int dummy; } ;
struct nvkm_ram {int part_mask; int ranks; int /*<<< orphan*/  vram; int /*<<< orphan*/  parts; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
typedef  enum nvkm_ram_type { ____Placeholder_nvkm_ram_type } nvkm_ram_type ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_RAM_MM_NORMAL ; 
 int const NVKM_RAM_MM_SHIFT ; 
 int NVKM_RAM_TYPE_DDR1 ; 
 int NVKM_RAM_TYPE_DDR2 ; 
 int NVKM_RAM_TYPE_DDR3 ; 
 int NVKM_RAM_TYPE_GDDR3 ; 
 int NVKM_RAM_TYPE_GDDR4 ; 
 int NVKM_RAM_TYPE_GDDR5 ; 
 int NVKM_RAM_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const FUNC1 (struct nvkm_ram*) ; 
 int FUNC2 (struct nvkm_bios*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int,int const) ; 
 int FUNC5 (struct nvkm_ram_func const*,struct nvkm_fb*,int,int,struct nvkm_ram*) ; 
 int FUNC6 (struct nvkm_device*,int) ; 

int
FUNC7(const struct nvkm_ram_func *func,
	      struct nvkm_fb *fb, struct nvkm_ram *ram)
{
	struct nvkm_device *device = fb->subdev.device;
	struct nvkm_bios *bios = device->bios;
	const u32 rsvd_head = ( 256 * 1024); /* vga memory */
	const u32 rsvd_tail = (1024 * 1024); /* vbios etc */
	u64 size = FUNC6(device, 0x10020c);
	enum nvkm_ram_type type = NVKM_RAM_TYPE_UNKNOWN;
	int ret;

	switch (FUNC6(device, 0x100714) & 0x00000007) {
	case 0: type = NVKM_RAM_TYPE_DDR1; break;
	case 1:
		if (FUNC2(bios) == NVKM_RAM_TYPE_DDR3)
			type = NVKM_RAM_TYPE_DDR3;
		else
			type = NVKM_RAM_TYPE_DDR2;
		break;
	case 2: type = NVKM_RAM_TYPE_GDDR3; break;
	case 3: type = NVKM_RAM_TYPE_GDDR4; break;
	case 4: type = NVKM_RAM_TYPE_GDDR5; break;
	default:
		break;
	}

	size = (size & 0x000000ff) << 32 | (size & 0xffffff00);

	ret = FUNC5(func, fb, type, size, ram);
	if (ret)
		return ret;

	ram->part_mask = (FUNC6(device, 0x001540) & 0x00ff0000) >> 16;
	ram->parts = FUNC0(ram->part_mask);
	ram->ranks = (FUNC6(device, 0x100200) & 0x4) ? 2 : 1;
	FUNC3(&ram->vram);

	return FUNC4(&ram->vram, NVKM_RAM_MM_NORMAL,
			    rsvd_head >> NVKM_RAM_MM_SHIFT,
			    (size - rsvd_head - rsvd_tail) >> NVKM_RAM_MM_SHIFT,
			    FUNC1(ram) >> NVKM_RAM_MM_SHIFT);
}