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
struct bd2802_led {int /*<<< orphan*/  rwsem; scalar_t__ adf_on; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bd2802_led* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct bd2802_led *led = FUNC1(FUNC3(dev));
	ssize_t ret;

	FUNC0(&led->rwsem);
	if (led->adf_on)
		ret = FUNC2(buf, "on\n");
	else
		ret = FUNC2(buf, "off\n");
	FUNC4(&led->rwsem);

	return ret;
}