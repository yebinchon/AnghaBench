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
typedef  scalar_t__ u32 ;
struct nvkm_bios {scalar_t__ bmp_offset; } ;
struct bit_entry {int version; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 int FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC4(struct nvkm_bios *bios, u8 *ver, u8 *hdr,
		  u8 *cnt, u8 *len, u8 *snr, u8 *ssz)
{
	struct bit_entry bit_P;
	u32 perf = 0;

	if (!FUNC0(bios, 'P', &bit_P)) {
		if (bit_P.version <= 2) {
			perf = FUNC3(bios, bit_P.offset + 0);
			if (perf) {
				*ver = FUNC1(bios, perf + 0);
				*hdr = FUNC1(bios, perf + 1);
				if (*ver >= 0x40 && *ver < 0x41) {
					*cnt = FUNC1(bios, perf + 5);
					*len = FUNC1(bios, perf + 2);
					*snr = FUNC1(bios, perf + 4);
					*ssz = FUNC1(bios, perf + 3);
					return perf;
				} else
				if (*ver >= 0x20 && *ver < 0x40) {
					*cnt = FUNC1(bios, perf + 2);
					*len = FUNC1(bios, perf + 3);
					*snr = FUNC1(bios, perf + 4);
					*ssz = FUNC1(bios, perf + 5);
					return perf;
				}
			}
		}
	}

	if (bios->bmp_offset) {
		if (FUNC1(bios, bios->bmp_offset + 6) >= 0x25) {
			perf = FUNC2(bios, bios->bmp_offset + 0x94);
			if (perf) {
				*hdr = FUNC1(bios, perf + 0);
				*ver = FUNC1(bios, perf + 1);
				*cnt = FUNC1(bios, perf + 2);
				*len = FUNC1(bios, perf + 3);
				*snr = 0;
				*ssz = 0;
				return perf;
			}
		}
	}

	return 0;
}