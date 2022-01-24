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
struct heartbeat_trig_data {int invert; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct heartbeat_trig_data* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct heartbeat_trig_data *heartbeat_data =
		FUNC1(dev);
	unsigned long state;
	int ret;

	ret = FUNC0(buf, 0, &state);
	if (ret)
		return ret;

	heartbeat_data->invert = !!state;

	return size;
}