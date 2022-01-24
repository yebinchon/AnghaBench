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
typedef  int /*<<< orphan*/  u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_pcirT {int vendor_id; int device_id; int* class_code; int image_size; int image_rev; int image_type; int last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_pcirT*,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC3 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC4(struct nvkm_bios *bios, u32 base, u8 *ver, u16 *hdr,
	      struct nvbios_pcirT *info)
{
	u32 data = FUNC1(bios, base, ver, hdr);
	FUNC0(info, 0x00, sizeof(*info));
	if (data) {
		info->vendor_id = FUNC3(bios, data + 0x04);
		info->device_id = FUNC3(bios, data + 0x06);
		info->class_code[0] = FUNC2(bios, data + 0x0d);
		info->class_code[1] = FUNC2(bios, data + 0x0e);
		info->class_code[2] = FUNC2(bios, data + 0x0f);
		info->image_size = FUNC3(bios, data + 0x10) * 512;
		info->image_rev = FUNC3(bios, data + 0x12);
		info->image_type = FUNC2(bios, data + 0x14);
		info->last = FUNC2(bios, data + 0x15) & 0x80;
	}
	return data;
}