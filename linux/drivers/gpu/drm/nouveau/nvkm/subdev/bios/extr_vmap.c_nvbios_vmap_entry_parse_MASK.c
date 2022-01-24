#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_vmap_entry {int link; void** arg; void* max; void* min; void* mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_vmap_entry*,int,int) ; 
 void* FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 void* FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct nvkm_bios*,int,int*,int*) ; 

u32
FUNC4(struct nvkm_bios *bios, int idx, u8 *ver, u8 *len,
			struct nvbios_vmap_entry *info)
{
	u32 vmap = FUNC3(bios, idx, ver, len);
	FUNC0(info, 0x00, sizeof(*info));
	switch (!!vmap * *ver) {
	case 0x10:
		info->link   = 0xff;
		info->min    = FUNC2(bios, vmap + 0x00);
		info->max    = FUNC2(bios, vmap + 0x04);
		info->arg[0] = FUNC2(bios, vmap + 0x08);
		info->arg[1] = FUNC2(bios, vmap + 0x0c);
		info->arg[2] = FUNC2(bios, vmap + 0x10);
		break;
	case 0x20:
		info->mode   = FUNC1(bios, vmap + 0x00);
		info->link   = FUNC1(bios, vmap + 0x01);
		info->min    = FUNC2(bios, vmap + 0x02);
		info->max    = FUNC2(bios, vmap + 0x06);
		info->arg[0] = FUNC2(bios, vmap + 0x0a);
		info->arg[1] = FUNC2(bios, vmap + 0x0e);
		info->arg[2] = FUNC2(bios, vmap + 0x12);
		info->arg[3] = FUNC2(bios, vmap + 0x16);
		info->arg[4] = FUNC2(bios, vmap + 0x1a);
		info->arg[5] = FUNC2(bios, vmap + 0x1e);
		break;
	}
	return vmap;
}