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
struct TYPE_2__ {int /*<<< orphan*/  i2c; } ;
struct i3c_bus {TYPE_1__ scl_rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct i3c_bus* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				      struct device_attribute *da,
				      char *buf)
{
	struct i3c_bus *i3cbus = FUNC0(dev);
	ssize_t ret;

	FUNC1(i3cbus);
	ret = FUNC3(buf, "%ld\n", i3cbus->scl_rate.i2c);
	FUNC2(i3cbus);

	return ret;
}