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
typedef  int u32 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int length; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 int FUNC1 (struct nvkm_bios*,int) ; 
 int FUNC2 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC3(struct nvkm_bios *bios,
	       u8 *ver, u8 *hdr, u8 *cnt, u8 *len, u8 *xnr, u8 *xsz)
{
	struct bit_entry bit_P;
	u32 data = 0x00000000;

	if (!FUNC0(bios, 'P', &bit_P)) {
		if (bit_P.version == 2 && bit_P.length > 0x63)
			data = FUNC2(bios, bit_P.offset + 0x60);
		if (data) {
			*ver = FUNC1(bios, data + 0);
			switch (*ver) {
			case 0x10:
				*hdr = FUNC1(bios, data + 1);
				*cnt = FUNC1(bios, data + 2);
				*len = 4;
				*xnr = FUNC1(bios, data + 3);
				*xsz = 4;
				return data;
			default:
				break;
			}
		}
	}

	return 0x00000000;
}