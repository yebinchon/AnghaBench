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
struct kernel_param {int dummy; } ;
struct dmatest_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int dmatest_run ; 
 int /*<<< orphan*/  FUNC0 (struct dmatest_info*) ; 
 scalar_t__ FUNC1 (struct dmatest_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,struct kernel_param const*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmatest_info*) ; 
 struct dmatest_info test_info ; 

__attribute__((used)) static int FUNC6(char *val, const struct kernel_param *kp)
{
	struct dmatest_info *info = &test_info;

	FUNC2(&info->lock);
	if (FUNC1(info)) {
		dmatest_run = true;
	} else {
		if (!FUNC0(info))
			FUNC5(info);
		dmatest_run = false;
	}
	FUNC3(&info->lock);

	return FUNC4(val, kp);
}