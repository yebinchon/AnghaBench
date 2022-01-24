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
struct hv_driver {int dummy; } ;
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 size_t EEXIST ; 
 struct hv_driver* FUNC0 (struct device_driver*) ; 
 size_t FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hv_driver*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (struct hv_driver*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device_driver *driver, const char *buf,
			    size_t count)
{
	struct hv_driver *drv = FUNC0(driver);
	guid_t guid;
	ssize_t retval;

	retval = FUNC1(buf, &guid);
	if (retval)
		return retval;

	if (FUNC2(drv, &guid))
		return -EEXIST;

	retval = FUNC3(drv, &guid);
	if (retval)
		return retval;
	return count;
}