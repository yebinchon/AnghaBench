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
struct nvbios_boostS {int min; int max; void* percent; void* domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_boostS*,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC3 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC4(struct nvkm_bios *bios, int idx,
	       u32 data, u8 *ver, u8 *hdr, u8 cnt, u8 len,
	       struct nvbios_boostS *info)
{
	data = FUNC1(bios, idx, data, ver, hdr, cnt, len);
	FUNC0(info, 0x00, sizeof(*info));
	if (data) {
		info->domain  = FUNC2(bios, data + 0x00);
		info->percent = FUNC2(bios, data + 0x01);
		info->min     = FUNC3(bios, data + 0x02) * 1000;
		info->max     = FUNC3(bios, data + 0x04) * 1000;
	}
	return data;
}