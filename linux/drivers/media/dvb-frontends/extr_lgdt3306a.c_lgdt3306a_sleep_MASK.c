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
struct lgdt3306a_state {int current_frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int) ; 
 int FUNC3 (struct lgdt3306a_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct lgdt3306a_state *state)
{
	int ret;

	FUNC0("\n");
	state->current_frequency = -1; /* force re-tune, when we wake */

	ret = FUNC2(state, 1); /* disable data bus */
	if (FUNC1(ret))
		goto fail;

	ret = FUNC3(state, 0); /* power down */
	FUNC1(ret);

fail:
	return 0;
}