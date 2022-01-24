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
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  PAACE_AF_V ; 
 int /*<<< orphan*/  PAACE_V_VALID ; 
 int /*<<< orphan*/  PPAACE_AF_WSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct paace* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(int liodn)
{
	struct paace *ppaace;

	ppaace = FUNC2(liodn);
	if (!ppaace) {
		FUNC3("Invalid primary paace entry\n");
		return -ENOENT;
	}

	if (!FUNC0(ppaace->addr_bitfields, PPAACE_AF_WSE)) {
		FUNC3("liodn %d not configured\n", liodn);
		return -EINVAL;
	}

	/* Ensure that all other stores to the ppaace complete first */
	FUNC1();

	FUNC4(ppaace->addr_bitfields, PAACE_AF_V, PAACE_V_VALID);
	FUNC1();

	return 0;
}