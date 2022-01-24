#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int power_mode; } ;
struct adxl34x {int /*<<< orphan*/  mutex; TYPE_1__ pdata; scalar_t__ opened; int /*<<< orphan*/  suspended; int /*<<< orphan*/  disabled; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adxl34x*,int /*<<< orphan*/ ,int) ; 
 int PCTL_AUTO_SLEEP ; 
 int PCTL_LINK ; 
 int PCTL_MEASURE ; 
 int /*<<< orphan*/  POWER_CTL ; 
 struct adxl34x* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct adxl34x *ac = FUNC1(dev);
	unsigned int val;
	int error;

	error = FUNC2(buf, 10, &val);
	if (error)
		return error;

	FUNC3(&ac->mutex);

	if (val)
		ac->pdata.power_mode |= (PCTL_AUTO_SLEEP | PCTL_LINK);
	else
		ac->pdata.power_mode &= ~(PCTL_AUTO_SLEEP | PCTL_LINK);

	if (!ac->disabled && !ac->suspended && ac->opened)
		FUNC0(ac, POWER_CTL, ac->pdata.power_mode | PCTL_MEASURE);

	FUNC4(&ac->mutex);

	return count;
}