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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 unsigned int CLFLUSH_AFTER ; 
 unsigned int CLFLUSH_BEFORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(u32 *addr, u32 value, unsigned int flushes)
{
	if (FUNC2(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
		if (flushes & CLFLUSH_BEFORE) {
			FUNC0(addr);
			FUNC1();
		}

		*addr = value;

		/*
		 * Writes to the same cacheline are serialised by the CPU
		 * (including clflush). On the write path, we only require
		 * that it hits memory in an orderly fashion and place
		 * mb barriers at the start and end of the relocation phase
		 * to ensure ordering of clflush wrt to the system.
		 */
		if (flushes & CLFLUSH_AFTER)
			FUNC0(addr);
	} else
		*addr = value;
}