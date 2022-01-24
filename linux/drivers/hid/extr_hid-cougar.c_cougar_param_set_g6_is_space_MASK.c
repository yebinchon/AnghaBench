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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,struct kernel_param const*) ; 

__attribute__((used)) static int FUNC2(const char *val,
					const struct kernel_param *kp)
{
	int ret;

	ret = FUNC1(val, kp);
	if (ret)
		return ret;

	FUNC0();

	return 0;
}