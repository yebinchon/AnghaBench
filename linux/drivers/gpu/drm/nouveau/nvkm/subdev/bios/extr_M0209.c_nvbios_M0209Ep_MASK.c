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
typedef  int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_M0209E {int v00_40; int bits; int modulo; int v02_40; int v02_07; int v03; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_M0209E*,int,int) ; 
 int FUNC1 (struct nvkm_bios*,int,int*,int*,int*,int*) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 

u32
FUNC3(struct nvkm_bios *bios, int idx,
	       u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_M0209E *info)
{
	u32 data = FUNC1(bios, idx, ver, hdr, cnt, len);
	FUNC0(info, 0x00, sizeof(*info));
	switch (!!data * *ver) {
	case 0x10:
		info->v00_40 = (FUNC2(bios, data + 0x00) & 0x40) >> 6;
		info->bits   =  FUNC2(bios, data + 0x00) & 0x3f;
		info->modulo =  FUNC2(bios, data + 0x01);
		info->v02_40 = (FUNC2(bios, data + 0x02) & 0x40) >> 6;
		info->v02_07 =  FUNC2(bios, data + 0x02) & 0x07;
		info->v03    =  FUNC2(bios, data + 0x03);
		return data;
	default:
		break;
	}
	return 0x00000000;
}