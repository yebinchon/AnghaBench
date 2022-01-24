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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;
struct komeda_component {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct komeda_component *c, struct seq_file *sf)
{
	u32 v[9];

	FUNC0(sf, c->reg);

	FUNC1(c->reg, 0x80, 1, v);
	FUNC2(sf, "SC_INPUT_ID0:\t\t0x%X\n", v[0]);

	FUNC1(c->reg, 0xD0, 1, v);
	FUNC2(sf, "SC_CONTROL:\t\t0x%X\n", v[0]);

	FUNC1(c->reg, 0xDC, 9, v);
	FUNC2(sf, "SC_COEFFTAB:\t\t0x%X\n", v[0]);
	FUNC2(sf, "SC_IN_SIZE:\t\t0x%X\n", v[1]);
	FUNC2(sf, "SC_OUT_SIZE:\t\t0x%X\n", v[2]);
	FUNC2(sf, "SC_H_CROP:\t\t0x%X\n", v[3]);
	FUNC2(sf, "SC_V_CROP:\t\t0x%X\n", v[4]);
	FUNC2(sf, "SC_H_INIT_PH:\t\t0x%X\n", v[5]);
	FUNC2(sf, "SC_H_DELTA_PH:\t\t0x%X\n", v[6]);
	FUNC2(sf, "SC_V_INIT_PH:\t\t0x%X\n", v[7]);
	FUNC2(sf, "SC_V_DELTA_PH:\t\t0x%X\n", v[8]);
}