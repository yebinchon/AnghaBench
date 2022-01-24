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
struct bit_entry {int version; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,scalar_t__) ; 

u32
FUNC3(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
	struct bit_entry bit_P;
	u32 vmap = 0;

	if (!FUNC0(bios, 'P', &bit_P)) {
		if (bit_P.version == 2) {
			vmap = FUNC2(bios, bit_P.offset + 0x20);
			if (vmap) {
				*ver = FUNC1(bios, vmap + 0);
				switch (*ver) {
				case 0x10:
				case 0x20:
					*hdr = FUNC1(bios, vmap + 1);
					*cnt = FUNC1(bios, vmap + 3);
					*len = FUNC1(bios, vmap + 2);
					return vmap;
				default:
					break;
				}
			}
		}
	}

	return 0;
}