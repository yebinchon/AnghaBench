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
struct gt215_ramfuc {int dummy; } ;
struct gt215_clk_info {int /*<<< orphan*/  pll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gt215_ramfuc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gt215_ramfuc*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gt215_ramfuc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct gt215_ramfuc *fuc, struct gt215_clk_info *mclk)
{
	FUNC2(fuc, 0x004004, mclk->pll);
	FUNC0(fuc, 0x004000, 0x00000001, 0x00000001);
	FUNC0(fuc, 0x004000, 0x00000010, 0x00000000);
	FUNC1(fuc, 0x004000, 0x00020000, 0x00020000, 64000);
	FUNC0(fuc, 0x004000, 0x00000010, 0x00000010);
}