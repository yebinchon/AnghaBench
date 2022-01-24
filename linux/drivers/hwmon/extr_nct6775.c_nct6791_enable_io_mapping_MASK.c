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

/* Variables and functions */
 int /*<<< orphan*/  NCT6791_REG_HM_IO_SPACE_LOCK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(int sioaddr)
{
	int val;

	val = FUNC1(sioaddr, NCT6791_REG_HM_IO_SPACE_LOCK_ENABLE);
	if (val & 0x10) {
		FUNC0("Enabling hardware monitor logical device mappings.\n");
		FUNC2(sioaddr, NCT6791_REG_HM_IO_SPACE_LOCK_ENABLE,
			     val & ~0x10);
	}
}