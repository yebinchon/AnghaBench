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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ U32_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static u64 FUNC7(u64 start, u64 end, u64 len, u64 align)
{
	u64 range, addr;

	FUNC0(FUNC4(start, len, end));
	FUNC0(FUNC6(start, align) > FUNC5(end - len, align));

	range = FUNC5(end - len, align) - FUNC6(start, align);
	if (range) {
		if (sizeof(unsigned long) == sizeof(u64)) {
			addr = FUNC3();
		} else {
			addr = FUNC2();
			if (range > U32_MAX) {
				addr <<= 32;
				addr |= FUNC2();
			}
		}
		FUNC1(addr, range, &addr);
		start += addr;
	}

	return FUNC6(start, align);
}