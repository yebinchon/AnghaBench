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
struct rnd_state {int dummy; } ;
typedef  int /*<<< orphan*/  stack ;

/* Variables and functions */
 size_t U32_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (size_t,struct rnd_state*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,size_t) ; 

void FUNC3(void *arr, size_t elsz, size_t count,
			  struct rnd_state *state)
{
	char stack[128];

	if (FUNC0(elsz > sizeof(stack) || count > U32_MAX))
		return;

	if (!elsz || !count)
		return;

	/* Fisher-Yates shuffle courtesy of Knuth */
	while (--count) {
		size_t swp;

		swp = FUNC1(count + 1, state);
		if (swp == count)
			continue;

		FUNC2(stack, arr + count * elsz, elsz);
		FUNC2(arr + count * elsz, arr + swp * elsz, elsz);
		FUNC2(arr + swp * elsz, stack, elsz);
	}
}