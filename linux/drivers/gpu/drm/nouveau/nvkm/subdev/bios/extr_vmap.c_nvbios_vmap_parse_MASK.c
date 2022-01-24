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
struct nvbios_vmap {int max0; int max1; int max2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_vmap*,int,int) ; 
 void* FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,int*,int*,int*,int*) ; 

u32
FUNC3(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
		  struct nvbios_vmap *info)
{
	u32 vmap = FUNC2(bios, ver, hdr, cnt, len);
	FUNC0(info, 0x00, sizeof(*info));
	switch (!!vmap * *ver) {
	case 0x10:
		info->max0 = 0xff;
		info->max1 = 0xff;
		info->max2 = 0xff;
		break;
	case 0x20:
		info->max0 = FUNC1(bios, vmap + 0x7);
		info->max1 = FUNC1(bios, vmap + 0x8);
		if (*len >= 0xc)
			info->max2 = FUNC1(bios, vmap + 0xc);
		else
			info->max2 = 0xff;
		break;
	}
	return vmap;
}