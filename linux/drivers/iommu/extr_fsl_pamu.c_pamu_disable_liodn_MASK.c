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
struct paace {int /*<<< orphan*/  addr_bitfields; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  PAACE_AF_V ; 
 int /*<<< orphan*/  PAACE_V_INVALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct paace* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(int liodn)
{
	struct paace *ppaace;

	ppaace = FUNC1(liodn);
	if (!ppaace) {
		FUNC2("Invalid primary paace entry\n");
		return -ENOENT;
	}

	FUNC3(ppaace->addr_bitfields, PAACE_AF_V, PAACE_V_INVALID);
	FUNC0();

	return 0;
}