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
typedef  unsigned int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 () ; 
 scalar_t__ use_ktime ; 

__attribute__((used)) static inline u64 FUNC2(void)
{
	if (use_ktime) {
		return FUNC1();
	} else {
		unsigned int x;
		FUNC0(x);
		return x;
	}
}