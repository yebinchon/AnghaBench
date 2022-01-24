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
struct dmatest_params {scalar_t__ iterations; } ;
struct dmatest_info {struct dmatest_params params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmatest_info*) ; 
 int FUNC1 (char*,struct kernel_param const*) ; 
 struct dmatest_info test_info ; 
 int /*<<< orphan*/  thread_wait ; 
 int wait ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(char *val, const struct kernel_param *kp)
{
	struct dmatest_info *info = &test_info;
	struct dmatest_params *params = &info->params;

	if (params->iterations)
		FUNC2(thread_wait, !FUNC0(info));
	wait = true;
	return FUNC1(val, kp);
}