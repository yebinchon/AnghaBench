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
struct tmp401_data {int* status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int nr; int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tmp401_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmp401_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct tmp401_data* FUNC3 (struct device*) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			   struct device_attribute *devattr, char *buf)
{
	int nr = FUNC4(devattr)->nr;
	int mask = FUNC4(devattr)->index;
	struct tmp401_data *data = FUNC3(dev);

	if (FUNC0(data))
		return FUNC1(data);

	return FUNC2(buf, "%d\n", !!(data->status[nr] & mask));
}