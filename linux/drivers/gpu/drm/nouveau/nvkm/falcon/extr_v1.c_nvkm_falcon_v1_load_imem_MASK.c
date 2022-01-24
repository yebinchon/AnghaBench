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
typedef  int /*<<< orphan*/  u16 ;
struct nvkm_falcon {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_falcon*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_falcon *falcon, void *data, u32 start,
			 u32 size, u16 tag, u8 port, bool secure)
{
	u8 rem = size % 4;
	u32 reg;
	int i;

	size -= rem;

	reg = start | FUNC0(24) | (secure ? FUNC0(28) : 0);
	FUNC1(falcon, 0x180 + (port * 16), reg);
	for (i = 0; i < size / 4; i++) {
		/* write new tag every 256B */
		if ((i & 0x3f) == 0)
			FUNC1(falcon, 0x188 + (port * 16), tag++);
		FUNC1(falcon, 0x184 + (port * 16), ((u32 *)data)[i]);
	}

	/*
	 * If size is not a multiple of 4, mask the last work to ensure garbage
	 * does not get written
	 */
	if (rem) {
		u32 extra = ((u32 *)data)[i];

		/* write new tag every 256B */
		if ((i & 0x3f) == 0)
			FUNC1(falcon, 0x188 + (port * 16), tag++);
		FUNC1(falcon, 0x184 + (port * 16),
				 extra & (FUNC0(rem * 8) - 1));
		++i;
	}

	/* code must be padded to 0x40 words */
	for (; i & 0x3f; i++)
		FUNC1(falcon, 0x184 + (port * 16), 0);
}