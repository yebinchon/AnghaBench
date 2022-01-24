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
 scalar_t__ FUNC0 (struct applesmc_entry const*) ; 
 int FUNC1 (struct applesmc_entry const*) ; 
 struct applesmc_entry* FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *key, bool *value)
{
	const struct applesmc_entry *entry;

	entry = FUNC2(key);
	if (FUNC0(entry) && FUNC1(entry) != -EINVAL)
		return FUNC1(entry);

	*value = !FUNC0(entry);
	return 0;
}