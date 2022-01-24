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
typedef  int const u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long FUNC1 (int) ; 

__attribute__((used)) static inline bool FUNC2(u64 start, u64 end, int lvl)
{
	const u64 mask = ~0ull << FUNC1(lvl + 1);

	FUNC0(start >= end);
	return (start ^ end) & mask && (start & ~mask) == 0;
}