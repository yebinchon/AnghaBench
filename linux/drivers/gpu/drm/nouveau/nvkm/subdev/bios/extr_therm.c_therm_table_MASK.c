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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct nvkm_bios {int /*<<< orphan*/  subdev; } ;
struct bit_entry {int version; scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_bios*,char,struct bit_entry*) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nvkm_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static u32
FUNC4(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *len, u8 *cnt)
{
	struct bit_entry bit_P;
	u32 therm = 0;

	if (!FUNC0(bios, 'P', &bit_P)) {
		if (bit_P.version == 1)
			therm = FUNC2(bios, bit_P.offset + 12);
		else if (bit_P.version == 2)
			therm = FUNC2(bios, bit_P.offset + 16);
		else
			FUNC3(&bios->subdev,
				   "unknown offset for thermal in BIT P %d\n",
				   bit_P.version);
	}

	/* exit now if we haven't found the thermal table */
	if (!therm)
		return 0;

	*ver = FUNC1(bios, therm + 0);
	*hdr = FUNC1(bios, therm + 1);
	*len = FUNC1(bios, therm + 2);
	*cnt = FUNC1(bios, therm + 3);
	return therm + FUNC1(bios, therm + 1);
}