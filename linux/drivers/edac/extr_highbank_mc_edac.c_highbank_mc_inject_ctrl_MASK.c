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
typedef  int /*<<< orphan*/  u8 ;
struct mem_ctl_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int,int /*<<< orphan*/ *) ; 
 struct mem_ctl_info* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct mem_ctl_info *mci = FUNC2(dev);
	u8 synd;

	if (FUNC1(buf, 16, &synd))
		return -EINVAL;

	FUNC0(mci, synd);

	return count;
}