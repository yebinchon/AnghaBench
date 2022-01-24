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
struct fts_data {int fan_alarm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct fts_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct fts_data*) ; 
 int FUNC3 (char*,char*,int) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	struct fts_data *data = FUNC1(dev);
	int index = FUNC4(devattr)->index;
	int err;

	err = FUNC2(data);
	if (err < 0)
		return err;

	return FUNC3(buf, "%d\n", !!(data->fan_alarm & FUNC0(index)));
}