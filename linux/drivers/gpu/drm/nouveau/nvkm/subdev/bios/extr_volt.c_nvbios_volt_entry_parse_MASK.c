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
struct nvbios_volt_entry {int voltage; int vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_volt_entry*,int,int) ; 
 int FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct nvkm_bios*,int,int*,int*) ; 

u32
FUNC4(struct nvkm_bios *bios, int idx, u8 *ver, u8 *len,
			struct nvbios_volt_entry *info)
{
	u32 volt = FUNC3(bios, idx, ver, len);
	FUNC0(info, 0x00, sizeof(*info));
	switch (!!volt * *ver) {
	case 0x12:
	case 0x20:
		info->voltage = FUNC1(bios, volt + 0x00) * 10000;
		info->vid     = FUNC1(bios, volt + 0x01);
		break;
	case 0x30:
		info->voltage = FUNC1(bios, volt + 0x00) * 10000;
		info->vid     = FUNC1(bios, volt + 0x01) >> 2;
		break;
	case 0x40:
		break;
	case 0x50:
		info->voltage = FUNC2(bios, volt) & 0x001fffff;
		info->vid     = (FUNC2(bios, volt) >> 23) & 0xff;
		break;
	}
	return volt;
}