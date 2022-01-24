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
struct seq_file {int dummy; } ;
struct komeda_component {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,...) ; 

__attribute__((used)) static void FUNC3(struct komeda_component *c,
				  struct seq_file *sf)
{
	u32 v[8], i;

	FUNC0(sf, c->reg);

	FUNC1(c->reg, 0xC0, 1, v);
	FUNC2(sf, "BS_INFO:\t\t0x%X\n", v[0]);

	FUNC1(c->reg, 0xD0, 8, v);
	FUNC2(sf, "BS_CONTROL:\t\t0x%X\n", v[0]);
	FUNC2(sf, "BS_PROG_LINE:\t\t0x%X\n", v[1]);
	FUNC2(sf, "BS_PREFETCH_LINE:\t0x%X\n", v[2]);
	FUNC2(sf, "BS_BG_COLOR:\t\t0x%X\n", v[3]);
	FUNC2(sf, "BS_ACTIVESIZE:\t\t0x%X\n", v[4]);
	FUNC2(sf, "BS_HINTERVALS:\t\t0x%X\n", v[5]);
	FUNC2(sf, "BS_VINTERVALS:\t\t0x%X\n", v[6]);
	FUNC2(sf, "BS_SYNC:\t\t0x%X\n", v[7]);

	FUNC1(c->reg, 0x100, 3, v);
	FUNC2(sf, "BS_DRIFT_TO:\t\t0x%X\n", v[0]);
	FUNC2(sf, "BS_FRAME_TO:\t\t0x%X\n", v[1]);
	FUNC2(sf, "BS_TE_TO:\t\t0x%X\n", v[2]);

	FUNC1(c->reg, 0x110, 3, v);
	for (i = 0; i < 3; i++)
		FUNC2(sf, "BS_T%u_INTERVAL:\t\t0x%X\n", i, v[i]);

	FUNC1(c->reg, 0x120, 5, v);
	for (i = 0; i < 2; i++) {
		FUNC2(sf, "BS_CRC%u_LOW:\t\t0x%X\n", i, v[i << 1]);
		FUNC2(sf, "BS_CRC%u_HIGH:\t\t0x%X\n", i, v[(i << 1) + 1]);
	}
	FUNC2(sf, "BS_USER:\t\t0x%X\n", v[4]);
}