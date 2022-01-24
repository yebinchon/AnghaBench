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
struct yealink_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ENODEV ; 
 struct yealink_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_rwsema ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct yealink_dev*,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct yealink_dev *yld;

	FUNC1(&sysfs_rwsema);
	yld = FUNC0(dev);
	if (yld == NULL) {
		FUNC2(&sysfs_rwsema);
		return -ENODEV;
	}

	/* TODO locking with async usb control interface??? */
	FUNC3(yld, (char *)buf, count);
	FUNC2(&sysfs_rwsema);
	return count;
}