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
struct nvbios_cstepX {int freq; void* voltage; void** unkn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_cstepX*,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC3 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC4(struct nvkm_bios *bios, int idx, u8 *ver, u8 *hdr,
	       struct nvbios_cstepX *info)
{
	u32 data = FUNC1(bios, idx, ver, hdr);
	FUNC0(info, 0x00, sizeof(*info));
	if (data) {
		info->freq    = FUNC3(bios, data + 0x00) * 1000;
		info->unkn[0] = FUNC2(bios, data + 0x02);
		info->unkn[1] = FUNC2(bios, data + 0x03);
		info->voltage = FUNC2(bios, data + 0x04);
	}
	return data;
}