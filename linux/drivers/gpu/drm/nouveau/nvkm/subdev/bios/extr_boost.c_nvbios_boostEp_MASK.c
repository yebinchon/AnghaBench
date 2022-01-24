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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_boostE {int pstate; int min; int max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_boostE*,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC3(struct nvkm_bios *bios, int idx,
	       u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_boostE *info)
{
	u32 data = FUNC1(bios, idx, ver, hdr, cnt, len);
	FUNC0(info, 0x00, sizeof(*info));
	if (data) {
		info->pstate = (FUNC2(bios, data + 0x00) & 0x01e0) >> 5;
		info->min    =  FUNC2(bios, data + 0x02) * 1000;
		info->max    =  FUNC2(bios, data + 0x04) * 1000;
	}
	return data;
}