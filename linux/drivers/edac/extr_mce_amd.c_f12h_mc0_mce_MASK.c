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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LL_L1 ; 
 scalar_t__ LL_L2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static bool FUNC4(u16 ec, u8 xec)
{
	bool ret = false;

	if (FUNC1(ec)) {
		u8 ll = FUNC0(ec);
		ret = true;

		if (ll == LL_L2)
			FUNC3("during L1 linefill from L2.\n");
		else if (ll == LL_L1)
			FUNC3("Data/Tag %s error.\n", FUNC2(ec));
		else
			ret = false;
	}
	return ret;
}