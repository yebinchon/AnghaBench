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
 int /*<<< orphan*/  BLK_CONTROL ; 
 int /*<<< orphan*/  BLK_INPUT_ID0 ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct komeda_component *c, struct seq_file *sf)
{
	u32 v[3];

	FUNC0(sf, c->reg);

	FUNC1(c->reg, BLK_INPUT_ID0, 1, v);
	FUNC2(sf, "SP_INPUT_ID0:\t\t0x%X\n", v[0]);

	FUNC1(c->reg, BLK_CONTROL, 3, v);
	FUNC2(sf, "SP_CONTROL:\t\t0x%X\n", v[0]);
	FUNC2(sf, "SP_SIZE:\t\t0x%X\n", v[1]);
	FUNC2(sf, "SP_OVERLAP_SIZE:\t0x%X\n", v[2]);
}