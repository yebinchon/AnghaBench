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
struct nvbios_connT {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_connT*,int,int) ; 
 int FUNC1 (struct nvkm_bios*,int*,int*,int*,int*) ; 

u32
FUNC2(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
	      struct nvbios_connT *info)
{
	u32 data = FUNC1(bios, ver, hdr, cnt, len);
	FUNC0(info, 0x00, sizeof(*info));
	switch (!!data * *ver) {
	case 0x30:
	case 0x40:
		return data;
	default:
		break;
	}
	return 0x00000000;
}