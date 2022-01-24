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
struct bit_entry {int version; int length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC3(struct nvkm_bios *bios,
	       u8 *ver, u8 *hdr, u8 *cnt, u8 *len, u8 *snr, u8 *ssz)
{
	struct bit_entry bit_P;
	u32 boost = 0;

	if (!FUNC0(bios, 'P', &bit_P)) {
		if (bit_P.version == 2 && bit_P.length >= 0x34)
			boost = FUNC2(bios, bit_P.offset + 0x30);

		if (boost) {
			*ver = FUNC1(bios, boost + 0);
			switch (*ver) {
			case 0x11:
				*hdr = FUNC1(bios, boost + 1);
				*cnt = FUNC1(bios, boost + 5);
				*len = FUNC1(bios, boost + 2);
				*snr = FUNC1(bios, boost + 4);
				*ssz = FUNC1(bios, boost + 3);
				return boost;
			default:
				break;
			}
		}
	}

	return 0;
}