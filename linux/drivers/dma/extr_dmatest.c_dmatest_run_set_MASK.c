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
 scalar_t__ dmatest_run ; 
 scalar_t__ FUNC0 (struct dmatest_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,struct kernel_param const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmatest_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmatest_info*) ; 
 struct dmatest_info test_info ; 

__attribute__((used)) static int FUNC7(const char *val, const struct kernel_param *kp)
{
	struct dmatest_info *info = &test_info;
	int ret;

	FUNC1(&info->lock);
	ret = FUNC3(val, kp);
	if (ret) {
		FUNC2(&info->lock);
		return ret;
	} else if (dmatest_run) {
		if (FUNC0(info))
			FUNC5(info);
		else
			FUNC4("Could not start test, no channels configured\n");
	} else {
		FUNC6(info);
	}

	FUNC2(&info->lock);

	return ret;
}