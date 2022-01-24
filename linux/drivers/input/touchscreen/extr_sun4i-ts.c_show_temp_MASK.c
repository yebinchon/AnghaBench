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
struct sun4i_ts_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct sun4i_ts_data* FUNC0 (struct device*) ; 
 int FUNC1 (char*,char*,int) ; 
 int FUNC2 (struct sun4i_ts_data*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *devattr,
			 char *buf)
{
	struct sun4i_ts_data *ts = FUNC0(dev);
	int temp;
	int error;

	error = FUNC2(ts, &temp);
	if (error)
		return error;

	return FUNC1(buf, "%d\n", temp);
}