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
 scalar_t__ FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,scalar_t__) ; 

__attribute__((used)) static u32
FUNC3(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt,
			  u8 *len)
{
	struct bit_entry bit_P;
	u32 power_budget;

	if (FUNC0(bios, 'P', &bit_P) || bit_P.version != 2 ||
	    bit_P.length < 0x30)
		return 0;

	power_budget = FUNC2(bios, bit_P.offset + 0x2c);
	if (!power_budget)
		return 0;

	*ver = FUNC1(bios, power_budget);
	switch (*ver) {
	case 0x20:
	case 0x30:
		*hdr = FUNC1(bios, power_budget + 0x1);
		*len = FUNC1(bios, power_budget + 0x2);
		*cnt = FUNC1(bios, power_budget + 0x3);
		return power_budget;
	default:
		break;
	}

	return 0;
}