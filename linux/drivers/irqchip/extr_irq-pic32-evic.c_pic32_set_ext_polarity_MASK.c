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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 129 
#define  IRQ_TYPE_EDGE_RISING 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_INTCON ; 
 scalar_t__ evic_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(int bit, u32 type)
{
	/*
	 * External interrupts can be either edge rising or edge falling,
	 * but not both.
	 */
	switch (type) {
	case IRQ_TYPE_EDGE_RISING:
		FUNC3(FUNC0(bit), evic_base + FUNC2(REG_INTCON));
		break;
	case IRQ_TYPE_EDGE_FALLING:
		FUNC3(FUNC0(bit), evic_base + FUNC1(REG_INTCON));
		break;
	default:
		return -EINVAL;
	}

	return 0;
}