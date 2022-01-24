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
typedef  int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_M0209S {int* data; } ;
struct nvbios_M0209E {int modulo; int bits; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvbios_M0209S*,int,int) ; 
 int FUNC2 (struct nvkm_bios*,int,int*,int*,int*,int*,struct nvbios_M0209E*) ; 
 int FUNC3 (struct nvkm_bios*,int,int,int*,int*) ; 
 int FUNC4 (struct nvkm_bios*,int) ; 

u32
FUNC5(struct nvkm_bios *bios, int ent, int idx, u8 *ver, u8 *hdr,
	       struct nvbios_M0209S *info)
{
	struct nvbios_M0209E M0209E;
	u8  cnt, len;
	u32 data = FUNC2(bios, ent, ver, hdr, &cnt, &len, &M0209E);
	if (data) {
		u32 i, data = FUNC3(bios, ent, idx, ver, hdr);
		FUNC1(info, 0x00, sizeof(*info));
		switch (!!data * *ver) {
		case 0x10:
			for (i = 0; i < FUNC0(info->data); i++) {
				u32 bits = (i % M0209E.modulo) * M0209E.bits;
				u32 mask = (1ULL << M0209E.bits) - 1;
				u16  off = bits / 8;
				u8   mod = bits % 8;
				info->data[i] = FUNC4(bios, data + off);
				info->data[i] = info->data[i] >> mod;
				info->data[i] = info->data[i] & mask;
			}
			return data;
		default:
			break;
		}
	}
	return 0x00000000;
}