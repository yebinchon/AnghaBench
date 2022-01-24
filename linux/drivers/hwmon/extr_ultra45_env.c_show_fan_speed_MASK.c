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
typedef  scalar_t__ u8 ;
struct env {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ IREG_FAN0 ; 
 struct env* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct env*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			      char *buf)
{
	int fan_nr = FUNC5(attr)->index;
	struct env *p = FUNC2(dev);
	int rpm, period;
	u8 val;

	val = FUNC3(p, IREG_FAN0 + fan_nr);
	period = (int) val << 8;
	if (FUNC0(period))
		rpm = FUNC1(period);
	else
		rpm = 0;

	return FUNC4(buf, "%d\n", rpm);
}