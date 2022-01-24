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
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,int) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC3(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	struct bit_entry bit_M;
	u32 data = 0x00000000;

	if (!FUNC0(bios, 'M', &bit_M)) {
		if (bit_M.version == 2 && bit_M.length > 0x04)
			data = FUNC2(bios, bit_M.offset + 0x03);
		if (data) {
			*ver = FUNC1(bios, data + 0x00);
			switch (*ver) {
			case 0x10:
				*hdr = FUNC1(bios, data + 0x01);
				*len = FUNC1(bios, data + 0x02);
				*cnt = FUNC1(bios, data + 0x03);
				return data;
			default:
				break;
			}
		}
	}

	return 0x00000000;
}