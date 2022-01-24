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
struct paace {size_t fspi; int /*<<< orphan*/  addr_bitfields; int /*<<< orphan*/  impl_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAACE_IA_WCE ; 
 int /*<<< orphan*/  PPAACE_AF_MW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct paace* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spaace_pool ; 
 int /*<<< orphan*/ * spaact ; 

void FUNC5(int liodn)
{
	struct paace *ppaace;
	u32 subwin_cnt, size;

	ppaace = FUNC2(liodn);
	if (!ppaace) {
		FUNC3("Invalid liodn entry\n");
		return;
	}

	if (FUNC1(ppaace->addr_bitfields, PPAACE_AF_MW)) {
		subwin_cnt = 1UL << (FUNC1(ppaace->impl_attr, PAACE_IA_WCE) + 1);
		size = (subwin_cnt - 1) * sizeof(struct paace);
		FUNC0(spaace_pool, (unsigned long)&spaact[ppaace->fspi], size);
		FUNC4(ppaace->addr_bitfields, PPAACE_AF_MW, 0);
	}
}