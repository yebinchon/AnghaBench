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
typedef  int u16 ;
struct nvkm_bios {int bmp_offset; int /*<<< orphan*/  subdev; } ;
struct nvbios_init {int /*<<< orphan*/ * subdev; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*) ; 
 int FUNC1 (struct nvbios_init*) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 

__attribute__((used)) static u16
FUNC3(struct nvkm_bios *bios, int index)
{
	struct nvbios_init init = { .subdev = &bios->subdev };
	u16 bmp_ver = FUNC0(bios), data;

	if (bmp_ver && bmp_ver < 0x0510) {
		if (index > 1 || bmp_ver < 0x0100)
			return 0x0000;

		data = bios->bmp_offset + (bmp_ver < 0x0200 ? 14 : 18);
		return FUNC2(bios, data + (index * 2));
	}

	data = FUNC1(&init);
	if (data)
		return FUNC2(bios, data + (index * 2));

	return 0x0000;
}