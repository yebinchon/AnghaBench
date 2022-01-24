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
typedef  unsigned long phys_addr_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 unsigned long FUNC2 (void*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static unsigned long FUNC5(void *addr)
{
	phys_addr_t paddr;

	if (FUNC1(addr))
		paddr = FUNC3(FUNC4(addr)) +
					 FUNC2(addr);
	else
		paddr = FUNC0(addr);

	return  paddr >> PAGE_SHIFT;
}