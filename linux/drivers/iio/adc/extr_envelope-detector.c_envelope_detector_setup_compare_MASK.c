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
struct envelope {int level; int high; int low; int dac_max; int /*<<< orphan*/  done; int /*<<< orphan*/  comp_interval; int /*<<< orphan*/  comp_timeout; int /*<<< orphan*/  dac; scalar_t__ invert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct envelope*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct envelope *env)
{
	int ret;

	/*
	 * Do a binary search for the peak input level, and stop
	 * when that level is "trapped" between two adjacent DAC
	 * values.
	 * When invert is active, use the midpoint floor so that
	 * env->level ends up as env->low when the termination
	 * criteria below is fulfilled, and use the midpoint
	 * ceiling when invert is not active so that env->level
	 * ends up as env->high in that case.
	 */
	env->level = (env->high + env->low + !env->invert) / 2;

	if (env->high == env->low + 1) {
		FUNC0(&env->done);
		return;
	}

	/* Set a "safe" DAC level (if there is such a thing)... */
	ret = FUNC2(env->dac, env->invert ? 0 : env->dac_max);
	if (ret < 0)
		goto err;

	/* ...clear the comparison result... */
	FUNC1(env);

	/* ...set the real DAC level... */
	ret = FUNC2(env->dac, env->level);
	if (ret < 0)
		goto err;

	/* ...and wait for a bit to see if the latch catches anything. */
	FUNC4(&env->comp_timeout,
			      FUNC3(env->comp_interval));
	return;

err:
	env->level = ret;
	FUNC0(&env->done);
}