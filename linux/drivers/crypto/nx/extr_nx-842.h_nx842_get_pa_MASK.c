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
 unsigned long FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 unsigned long FUNC2 (void*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static inline unsigned long FUNC5(void *addr)
{
	if (!FUNC1(addr))
		return FUNC0(addr);

	return FUNC3(FUNC4(addr)) + FUNC2(addr);
}