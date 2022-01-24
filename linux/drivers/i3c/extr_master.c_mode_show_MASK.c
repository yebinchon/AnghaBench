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
struct i3c_bus {size_t mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 struct i3c_bus* FUNC1 (struct device*) ; 
 char** i3c_bus_mode_strings ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			 struct device_attribute *da,
			 char *buf)
{
	struct i3c_bus *i3cbus = FUNC1(dev);
	ssize_t ret;

	FUNC2(i3cbus);
	if (i3cbus->mode < 0 ||
	    i3cbus->mode >= FUNC0(i3c_bus_mode_strings) ||
	    !i3c_bus_mode_strings[i3cbus->mode])
		ret = FUNC4(buf, "unknown\n");
	else
		ret = FUNC4(buf, "%s\n", i3c_bus_mode_strings[i3cbus->mode]);
	FUNC3(i3cbus);

	return ret;
}