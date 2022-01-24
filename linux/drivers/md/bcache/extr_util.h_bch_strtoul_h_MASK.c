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
 int FUNC0 (char const*,unsigned int*) ; 
 int FUNC1 (char const*,unsigned long long*) ; 

__attribute__((used)) static inline int FUNC2(const char *cp, long *res)
{
#if BITS_PER_LONG == 32
	return bch_strtouint_h(cp, (unsigned int *) res);
#else
	return FUNC1(cp, (unsigned long long *) res);
#endif
}