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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct applesmc_entry {int len; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct applesmc_entry const*) ; 
 int FUNC1 (struct applesmc_entry const*) ; 
 struct applesmc_entry* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct applesmc_entry const*,char*,int) ; 
 int /*<<< orphan*/  key_at_index ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *sysfsbuf)
{
	const struct applesmc_entry *entry;
	int ret;

	entry = FUNC2(key_at_index);
	if (FUNC0(entry))
		return FUNC1(entry);
	ret = FUNC3(entry, sysfsbuf, entry->len);
	if (ret)
		return ret;

	return entry->len;
}