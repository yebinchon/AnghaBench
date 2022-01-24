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
typedef  int u16 ;
struct nvkm_bios {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_bios*,int*,int*,int*,int*) ; 
 int FUNC1 (struct nvkm_bios*,int) ; 
 int FUNC2 (struct nvkm_bios*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

u16
FUNC4(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	u16 i2c = 0x0000;
	u16 dcb = FUNC0(bios, ver, hdr, cnt, len);
	if (dcb) {
		if (*ver >= 0x15)
			i2c = FUNC2(bios, dcb + 2);
		if (*ver >= 0x30)
			i2c = FUNC2(bios, dcb + 4);
	}

	if (i2c && *ver >= 0x42) {
		FUNC3(&bios->subdev, "ccb %02x not supported\n", *ver);
		return 0x0000;
	}

	if (i2c && *ver >= 0x30) {
		*ver = FUNC1(bios, i2c + 0);
		*hdr = FUNC1(bios, i2c + 1);
		*cnt = FUNC1(bios, i2c + 2);
		*len = FUNC1(bios, i2c + 3);
	} else {
		*ver = *ver; /* use DCB version */
		*hdr = 0;
		*cnt = 16;
		*len = 4;
	}

	return i2c;
}