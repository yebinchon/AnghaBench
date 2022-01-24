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
struct net_device {scalar_t__ reg_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 size_t EPERM ; 
 scalar_t__ NETREG_REGISTERED ; 
 int FUNC0 (struct net_device*,char const*) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct net_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct net_device *dev = FUNC4(d);
	int ret;

	if (!FUNC2()) {
		return FUNC1();
	}

	if (dev->reg_state != NETREG_REGISTERED) {
		FUNC3();
		return -EPERM;
	}

	ret = FUNC0(dev, buf);

	/* The assumption is that the function ipoib_set_mode returned
	 * with the rtnl held by it, if not the value -EBUSY returned,
	 * then no need to rtnl_unlock
	 */
	if (ret != -EBUSY)
		FUNC3();

	return (!ret || ret == -EBUSY) ? count : ret;
}