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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void *addr, pgprot_t prot)
{
	if (FUNC2(prot) == FUNC2(PAGE_KERNEL))
		FUNC1(addr);
	else
		FUNC0(addr);
}