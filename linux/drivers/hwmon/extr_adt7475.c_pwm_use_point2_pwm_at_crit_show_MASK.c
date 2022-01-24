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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int config4; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int CONFIG4_MAXDUTY ; 
 scalar_t__ FUNC0 (struct adt7475_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct adt7475_data*) ; 
 struct adt7475_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *devattr,
					char *buf)
{
	struct adt7475_data *data = FUNC2(dev);

	if (FUNC0(data))
		return FUNC1(data);

	return FUNC3(buf, "%d\n", !!(data->config4 & CONFIG4_MAXDUTY));
}