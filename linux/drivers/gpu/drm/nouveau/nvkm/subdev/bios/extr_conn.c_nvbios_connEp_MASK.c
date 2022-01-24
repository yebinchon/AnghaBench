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
struct nvbios_connE {int type; int location; int hpd; int dp; int di; int sr; int lcdid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_connE*,int,int) ; 
 int FUNC1 (struct nvkm_bios*,int,int*,int*) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 

u32
FUNC3(struct nvkm_bios *bios, u8 idx, u8 *ver, u8 *len,
	      struct nvbios_connE *info)
{
	u32 data = FUNC1(bios, idx, ver, len);
	FUNC0(info, 0x00, sizeof(*info));
	switch (!!data * *ver) {
	case 0x30:
	case 0x40:
		info->type     =  FUNC2(bios, data + 0x00);
		info->location =  FUNC2(bios, data + 0x01) & 0x0f;
		info->hpd      = (FUNC2(bios, data + 0x01) & 0x30) >> 4;
		info->dp       = (FUNC2(bios, data + 0x01) & 0xc0) >> 6;
		if (*len < 4)
			return data;
		info->hpd     |= (FUNC2(bios, data + 0x02) & 0x03) << 2;
		info->dp      |=  FUNC2(bios, data + 0x02) & 0x0c;
		info->di       = (FUNC2(bios, data + 0x02) & 0xf0) >> 4;
		info->hpd     |= (FUNC2(bios, data + 0x03) & 0x07) << 4;
		info->sr       = (FUNC2(bios, data + 0x03) & 0x08) >> 3;
		info->lcdid    = (FUNC2(bios, data + 0x03) & 0x70) >> 4;
		return data;
	default:
		break;
	}
	return 0x00000000;
}