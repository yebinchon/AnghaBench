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
struct devfreq_event_dev {int enable_count; int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct devfreq_event_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct devfreq_event_dev *edev = FUNC1(dev);

	if (!edev || !edev->desc)
		return -EINVAL;

	return FUNC0(buf, "%d\n", edev->enable_count);
}