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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ R4_IRD ; 
 scalar_t__ R4_SNOOP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TT_INSTR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(u16 ec, u8 xec)
{
	u8 r4    = FUNC1(ec);
	bool ret = true;

	if (!FUNC0(ec))
		return false;

	if (FUNC2(ec) != TT_INSTR)
		return false;

	if (r4 == R4_IRD)
		FUNC3("Data/tag array parity error for a tag hit.\n");
	else if (r4 == R4_SNOOP)
		FUNC3("Tag error during snoop/victimization.\n");
	else if (xec == 0x0)
		FUNC3("Tag parity error from victim castout.\n");
	else if (xec == 0x2)
		FUNC3("Microcode patch RAM parity error.\n");
	else
		ret = false;

	return ret;
}