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
typedef  int u32 ;
typedef  int u16 ;
struct nvkm_bios {int /*<<< orphan*/  subdev; } ;
struct nvbios_pcirT {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*,int,int /*<<< orphan*/ *,int*,struct nvbios_pcirT*) ; 
 int FUNC1 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 

u32
FUNC3(struct nvkm_bios *bios, u32 base)
{
	struct nvbios_pcirT pcir;
	u8  ver; u16 hdr;
	u32 data = FUNC0(bios, base, &ver, &hdr, &pcir);
	if (data = (data + hdr + 0x0f) & ~0x0f, data) {
		switch (FUNC1(bios, data + 0x00)) {
		case 0x4544504e: /* NPDE */
			break;
		default:
			FUNC2(&bios->subdev,
				   "%08x: NPDE signature (%08x) unknown\n",
				   data, FUNC1(bios, data + 0x00));
			data = 0;
			break;
		}
	}
	return data;
}