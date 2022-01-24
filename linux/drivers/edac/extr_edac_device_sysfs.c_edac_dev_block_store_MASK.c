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
struct edac_dev_sysfs_block_attribute {int /*<<< orphan*/  (* store ) (struct kobject*,struct attribute*,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct kobject*,struct attribute*,char const*,size_t) ; 
 struct edac_dev_sysfs_block_attribute* FUNC1 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *kobj,
				struct attribute *attr,
				const char *buffer, size_t count)
{
	struct edac_dev_sysfs_block_attribute *block_attr;

	block_attr = FUNC1(attr);

	if (block_attr->store)
		return block_attr->store(kobj, attr, buffer, count);
	return -EIO;
}