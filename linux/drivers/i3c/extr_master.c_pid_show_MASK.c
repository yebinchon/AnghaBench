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
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;
struct i3c_dev_desc {TYPE_1__ info; } ;
struct i3c_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct i3c_bus* FUNC0 (struct device*) ; 
 struct i3c_dev_desc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			struct device_attribute *da,
			char *buf)
{
	struct i3c_bus *bus = FUNC0(dev);
	struct i3c_dev_desc *desc;
	ssize_t ret;

	FUNC2(bus);
	desc = FUNC1(dev);
	ret = FUNC4(buf, "%llx\n", desc->info.pid);
	FUNC3(bus);

	return ret;
}