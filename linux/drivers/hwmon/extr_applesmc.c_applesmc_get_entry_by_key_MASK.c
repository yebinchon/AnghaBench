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
struct applesmc_entry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct applesmc_entry const* FUNC0 (int) ; 
 struct applesmc_entry const* FUNC1 (int) ; 
 int FUNC2 (int*,char const*) ; 
 int FUNC3 (int*,char const*) ; 

__attribute__((used)) static const struct applesmc_entry *FUNC4(const char *key)
{
	int begin, end;
	int ret;

	ret = FUNC2(&begin, key);
	if (ret)
		return FUNC0(ret);
	ret = FUNC3(&end, key);
	if (ret)
		return FUNC0(ret);
	if (end - begin != 1)
		return FUNC0(-EINVAL);

	return FUNC1(begin);
}