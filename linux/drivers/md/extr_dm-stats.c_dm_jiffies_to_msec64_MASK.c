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
struct dm_stat {int stat_flags; } ;

/* Variables and functions */
 int STAT_PRECISE_TIMESTAMPS ; 
 void* FUNC0 (unsigned long long) ; 

__attribute__((used)) static unsigned long long FUNC1(struct dm_stat *s, unsigned long long j)
{
	unsigned long long result;
	unsigned mult;

	if (s->stat_flags & STAT_PRECISE_TIMESTAMPS)
		return j;

	result = 0;
	if (j)
		result = FUNC0(j & 0x3fffff);
	if (j >= 1 << 22) {
		mult = FUNC0(1 << 22);
		result += (unsigned long long)mult * (unsigned long long)FUNC0((j >> 22) & 0x3fffff);
	}
	if (j >= 1ULL << 44)
		result += (unsigned long long)mult * (unsigned long long)mult * (unsigned long long)FUNC0(j >> 44);

	return result;
}