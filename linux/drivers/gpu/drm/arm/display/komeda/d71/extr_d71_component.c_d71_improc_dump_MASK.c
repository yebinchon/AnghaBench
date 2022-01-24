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

__attribute__((used)) static void FUNC3(struct komeda_component *c, struct seq_file *sf)
{
	u32 v[12], i;

	FUNC0(sf, c->reg);

	FUNC1(c->reg, 0x80, 2, v);
	FUNC2(sf, "IPS_INPUT_ID0:\t\t0x%X\n", v[0]);
	FUNC2(sf, "IPS_INPUT_ID1:\t\t0x%X\n", v[1]);

	FUNC1(c->reg, 0xC0, 1, v);
	FUNC2(sf, "IPS_INFO:\t\t0x%X\n", v[0]);

	FUNC1(c->reg, 0xD0, 3, v);
	FUNC2(sf, "IPS_CONTROL:\t\t0x%X\n", v[0]);
	FUNC2(sf, "IPS_SIZE:\t\t0x%X\n", v[1]);
	FUNC2(sf, "IPS_DEPTH:\t\t0x%X\n", v[2]);

	FUNC1(c->reg, 0x130, 12, v);
	for (i = 0; i < 12; i++)
		FUNC2(sf, "IPS_RGB_RGB_COEFF%u:\t0x%X\n", i, v[i]);

	FUNC1(c->reg, 0x170, 12, v);
	for (i = 0; i < 12; i++)
		FUNC2(sf, "IPS_RGB_YUV_COEFF%u:\t0x%X\n", i, v[i]);
}