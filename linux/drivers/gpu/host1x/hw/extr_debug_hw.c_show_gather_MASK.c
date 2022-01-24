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
typedef  int u32 ;
struct output {int dummy; } ;
struct host1x_cdma {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int HOST1X_DEBUG_MAX_PAGE_OFFSET ; 
 int INVALID_PAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct output*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct output*,char*,...) ; 
 unsigned int FUNC2 (struct output*,int,int*) ; 

__attribute__((used)) static void FUNC3(struct output *o, phys_addr_t phys_addr,
			unsigned int words, struct host1x_cdma *cdma,
			phys_addr_t pin_addr, u32 *map_addr)
{
	/* Map dmaget cursor to corresponding mem handle */
	u32 offset = phys_addr - pin_addr;
	unsigned int data_count = 0, i;
	u32 payload = INVALID_PAYLOAD;

	/*
	 * Sometimes we're given different hardware address to the same
	 * page - in these cases the offset will get an invalid number and
	 * we just have to bail out.
	 */
	if (offset > HOST1X_DEBUG_MAX_PAGE_OFFSET) {
		FUNC1(o, "[address mismatch]\n");
		return;
	}

	for (i = 0; i < words; i++) {
		u32 addr = phys_addr + i * 4;
		u32 val = *(map_addr + offset / 4 + i);

		if (!data_count) {
			FUNC1(o, "%08x: %08x: ", addr, val);
			data_count = FUNC2(o, val, &payload);
		} else {
			FUNC0(o, "%08x%s", val,
					    data_count > 1 ? ", " : "])\n");
			data_count--;
		}
	}
}