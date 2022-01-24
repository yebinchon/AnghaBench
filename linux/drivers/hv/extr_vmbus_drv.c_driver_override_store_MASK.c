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
struct hv_device {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct hv_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct hv_device *hv_dev = FUNC1(dev);
	char *driver_override, *old, *cp;

	/* We need to keep extra room for a newline */
	if (count >= (PAGE_SIZE - 1))
		return -EINVAL;

	driver_override = FUNC4(buf, count, GFP_KERNEL);
	if (!driver_override)
		return -ENOMEM;

	cp = FUNC5(driver_override, '\n');
	if (cp)
		*cp = '\0';

	FUNC0(dev);
	old = hv_dev->driver_override;
	if (FUNC6(driver_override)) {
		hv_dev->driver_override = driver_override;
	} else {
		FUNC3(driver_override);
		hv_dev->driver_override = NULL;
	}
	FUNC2(dev);

	FUNC3(old);

	return count;
}