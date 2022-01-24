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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int active_devs ; 
 int /*<<< orphan*/  algs_lock ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sec_algs ; 

int FUNC4(void)
{
	int ret = 0;

	FUNC2(&algs_lock);
	if (++active_devs != 1)
		goto unlock;

	ret = FUNC1(sec_algs, FUNC0(sec_algs));
	if (ret)
		--active_devs;
unlock:
	FUNC3(&algs_lock);

	return ret;
}