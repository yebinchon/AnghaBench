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
struct serio {int manual_bind; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 struct serio* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct serio *serio = FUNC1(dev);
	int retval;

	retval = count;
	if (!FUNC0(buf, "manual", count)) {
		serio->manual_bind = true;
	} else if (!FUNC0(buf, "auto", count)) {
		serio->manual_bind = false;
	} else {
		retval = -EINVAL;
	}

	return retval;
}