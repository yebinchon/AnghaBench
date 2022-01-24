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
struct rnd_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int,struct rnd_state*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

void FUNC3(unsigned int *order, unsigned int count,
			struct rnd_state *state)
{
	unsigned int i, j;

	for (i = 0; i < count; ++i) {
		FUNC0(sizeof(unsigned int) > sizeof(u32));
		j = FUNC1(count, state);
		FUNC2(order[i], order[j]);
	}
}