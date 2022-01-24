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
 scalar_t__ active_devs ; 
 int /*<<< orphan*/  algs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qat_aeads ; 
 int /*<<< orphan*/  qat_algs ; 

void FUNC5(void)
{
	FUNC3(&algs_lock);
	if (--active_devs != 0)
		goto unlock;

	FUNC1(qat_aeads, FUNC0(qat_aeads));
	FUNC2(qat_algs, FUNC0(qat_algs));

unlock:
	FUNC4(&algs_lock);
}