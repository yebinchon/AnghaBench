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
struct adxl34x {int disabled; int /*<<< orphan*/  mutex; scalar_t__ opened; int /*<<< orphan*/  suspended; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adxl34x*) ; 
 int /*<<< orphan*/  FUNC1 (struct adxl34x*) ; 
 struct adxl34x* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct adxl34x *ac = FUNC2(dev);
	unsigned int val;
	int error;

	error = FUNC3(buf, 10, &val);
	if (error)
		return error;

	FUNC4(&ac->mutex);

	if (!ac->suspended && ac->opened) {
		if (val) {
			if (!ac->disabled)
				FUNC0(ac);
		} else {
			if (ac->disabled)
				FUNC1(ac);
		}
	}

	ac->disabled = !!val;

	FUNC5(&ac->mutex);

	return count;
}