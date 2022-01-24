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
typedef  int u64 ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ GICR_PROPBASER ; 
 int /*<<< orphan*/  LPI_PROPBASE_SZ ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool FUNC4(void)
{
	phys_addr_t addr;
	u64 val;

	/* Check whether the property table is in a reserved region */
	val = FUNC3(FUNC2() + GICR_PROPBASER);
	addr = val & FUNC0(51, 12);

	return FUNC1(addr, LPI_PROPBASE_SZ);
}