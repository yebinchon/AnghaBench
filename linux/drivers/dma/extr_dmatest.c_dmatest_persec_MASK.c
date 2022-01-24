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
typedef  int s64 ;

/* Variables and functions */
 unsigned long long FUNC0 (unsigned long long) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int) ; 

__attribute__((used)) static unsigned long long FUNC2(s64 runtime, unsigned int val)
{
	unsigned long long per_sec = 1000000;

	if (runtime <= 0)
		return 0;

	/* drop precision until runtime is 32-bits */
	while (runtime > UINT_MAX) {
		runtime >>= 1;
		per_sec <<= 1;
	}

	per_sec *= val;
	per_sec = FUNC0(per_sec);
	FUNC1(per_sec, runtime);

	return per_sec;
}