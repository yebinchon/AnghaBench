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
typedef  scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_npdeT {int image_size; int last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvbios_npdeT*,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int FUNC3 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC4(struct nvkm_bios *bios, u32 base, struct nvbios_npdeT *info)
{
	u32 data = FUNC1(bios, base);
	FUNC0(info, 0x00, sizeof(*info));
	if (data) {
		info->image_size = FUNC3(bios, data + 0x08) * 512;
		info->last = FUNC2(bios, data + 0x0a) & 0x80;
	}
	return data;
}