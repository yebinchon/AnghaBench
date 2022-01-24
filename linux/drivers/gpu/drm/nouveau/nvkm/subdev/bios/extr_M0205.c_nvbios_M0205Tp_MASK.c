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
struct nvbios_M0205T {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_M0205T*,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC3(struct nvkm_bios *bios,
	       u8 *ver, u8 *hdr, u8 *cnt, u8 *len, u8 *snr, u8 *ssz,
	       struct nvbios_M0205T *info)
{
	u32 data = FUNC1(bios, ver, hdr, cnt, len, snr, ssz);
	FUNC0(info, 0x00, sizeof(*info));
	switch (!!data * *ver) {
	case 0x10:
		info->freq = FUNC2(bios, data + 0x06);
		break;
	default:
		break;
	}
	return data;
}