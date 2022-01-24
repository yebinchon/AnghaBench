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
 int EBUSY ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  REG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(void)
{
	/*
	 * Try to reserve REG and REG + 1 for exclusive access.
	 */
	if (!FUNC1(REG, 2, KBUILD_MODNAME))
		return -EBUSY;

	FUNC0(0x87, REG);
	FUNC0(0x01, REG);
	FUNC0(0x55, REG);
	FUNC0(0x55, REG);
	return 0;
}