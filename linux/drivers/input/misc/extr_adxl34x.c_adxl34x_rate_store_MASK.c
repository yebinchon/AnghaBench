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
struct TYPE_2__ {int data_rate; scalar_t__ low_power_mode; } ;
struct adxl34x {int /*<<< orphan*/  mutex; TYPE_1__ pdata; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adxl34x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BW_RATE ; 
 int LOW_POWER ; 
 int FUNC1 (unsigned char) ; 
 struct adxl34x* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct adxl34x *ac = FUNC2(dev);
	unsigned char val;
	int error;

	error = FUNC3(buf, 10, &val);
	if (error)
		return error;

	FUNC4(&ac->mutex);

	ac->pdata.data_rate = FUNC1(val);
	FUNC0(ac, BW_RATE,
		 ac->pdata.data_rate |
			(ac->pdata.low_power_mode ? LOW_POWER : 0));

	FUNC5(&ac->mutex);

	return count;
}