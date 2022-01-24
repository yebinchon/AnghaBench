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
struct fts_data {int* fan_source; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct fts_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct fts_data*) ; 
 int FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *devattr, char *buf)
{
	struct fts_data *data = FUNC0(dev);
	int index = FUNC3(devattr)->index;
	int err;

	err = FUNC1(data);
	if (err < 0)
		return err;

	return FUNC2(buf, "%u\n", data->fan_source[index]);
}