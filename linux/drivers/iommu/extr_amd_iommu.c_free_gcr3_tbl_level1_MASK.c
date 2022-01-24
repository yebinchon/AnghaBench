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

/* Variables and functions */
 int GCR3_VALID ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int* FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(u64 *tbl)
{
	u64 *ptr;
	int i;

	for (i = 0; i < 512; ++i) {
		if (!(tbl[i] & GCR3_VALID))
			continue;

		ptr = FUNC1(tbl[i] & PAGE_MASK);

		FUNC0((unsigned long)ptr);
	}
}