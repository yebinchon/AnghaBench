#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i3c_bus {int id; TYPE_2__* cur_master; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {TYPE_1__ info; } ;

/* Variables and functions */
 struct i3c_bus* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *da,
				   char *buf)
{
	struct i3c_bus *i3cbus = FUNC0(dev);
	ssize_t ret;

	FUNC1(i3cbus);
	ret = FUNC3(buf, "%d-%llx\n", i3cbus->id,
		      i3cbus->cur_master->info.pid);
	FUNC2(i3cbus);

	return ret;
}