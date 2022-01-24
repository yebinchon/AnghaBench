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
struct nvbios_ramcfg {int rammap_ver; int rammap_hdr; int rammap_10_04_02; int rammap_10_04_08; int rammap_11_08_01; int rammap_11_08_0c; int rammap_11_08_10; int rammap_11_09_01ff; int rammap_11_0a_03fe; int rammap_11_0a_0400; int rammap_11_0a_0800; int rammap_11_0b_01f0; int rammap_11_0b_0200; int rammap_11_0b_0400; int rammap_11_0b_0800; int rammap_11_0d; int rammap_11_0e; int rammap_11_0f; int rammap_11_11_0c; void* rammap_max; void* rammap_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_ramcfg*,int,int) ; 
 int FUNC1 (struct nvkm_bios*,int,int*,int*,int*,int*) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 
 void* FUNC3 (struct nvkm_bios*,int) ; 
 int FUNC4 (struct nvkm_bios*,int) ; 

u32
FUNC5(struct nvkm_bios *bios, int idx,
		u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_ramcfg *p)
{
	u32 data = FUNC1(bios, idx, ver, hdr, cnt, len), temp;
	FUNC0(p, 0x00, sizeof(*p));
	p->rammap_ver = *ver;
	p->rammap_hdr = *hdr;
	switch (!!data * *ver) {
	case 0x10:
		p->rammap_min      =  FUNC3(bios, data + 0x00);
		p->rammap_max      =  FUNC3(bios, data + 0x02);
		p->rammap_10_04_02 = (FUNC2(bios, data + 0x04) & 0x02) >> 1;
		p->rammap_10_04_08 = (FUNC2(bios, data + 0x04) & 0x08) >> 3;
		break;
	case 0x11:
		p->rammap_min      =  FUNC3(bios, data + 0x00);
		p->rammap_max      =  FUNC3(bios, data + 0x02);
		p->rammap_11_08_01 = (FUNC2(bios, data + 0x08) & 0x01) >> 0;
		p->rammap_11_08_0c = (FUNC2(bios, data + 0x08) & 0x0c) >> 2;
		p->rammap_11_08_10 = (FUNC2(bios, data + 0x08) & 0x10) >> 4;
		temp = FUNC4(bios, data + 0x09);
		p->rammap_11_09_01ff = (temp & 0x000001ff) >> 0;
		p->rammap_11_0a_03fe = (temp & 0x0003fe00) >> 9;
		p->rammap_11_0a_0400 = (temp & 0x00040000) >> 18;
		p->rammap_11_0a_0800 = (temp & 0x00080000) >> 19;
		p->rammap_11_0b_01f0 = (temp & 0x01f00000) >> 20;
		p->rammap_11_0b_0200 = (temp & 0x02000000) >> 25;
		p->rammap_11_0b_0400 = (temp & 0x04000000) >> 26;
		p->rammap_11_0b_0800 = (temp & 0x08000000) >> 27;
		p->rammap_11_0d    =  FUNC2(bios, data + 0x0d);
		p->rammap_11_0e    =  FUNC2(bios, data + 0x0e);
		p->rammap_11_0f    =  FUNC2(bios, data + 0x0f);
		p->rammap_11_11_0c = (FUNC2(bios, data + 0x11) & 0x0c) >> 2;
		break;
	default:
		data = 0;
		break;
	}
	return data;
}