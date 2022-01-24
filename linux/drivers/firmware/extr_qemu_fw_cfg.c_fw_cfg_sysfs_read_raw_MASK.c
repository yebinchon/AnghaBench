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
struct kobject {int dummy; } ;
struct fw_cfg_sysfs_entry {scalar_t__ size; int /*<<< orphan*/  select; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,size_t) ; 
 struct fw_cfg_sysfs_entry* FUNC1 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC2(struct file *filp, struct kobject *kobj,
				     struct bin_attribute *bin_attr,
				     char *buf, loff_t pos, size_t count)
{
	struct fw_cfg_sysfs_entry *entry = FUNC1(kobj);

	if (pos > entry->size)
		return -EINVAL;

	if (count > entry->size - pos)
		count = entry->size - pos;

	return FUNC0(entry->select, buf, pos, count);
}