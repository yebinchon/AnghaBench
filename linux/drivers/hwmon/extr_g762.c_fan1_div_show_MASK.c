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
struct g762_data {int /*<<< orphan*/  fan_cmd1; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct g762_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct g762_data*) ; 
 struct g762_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *da,
			     char *buf)
{
	struct g762_data *data = FUNC3(dev);

	if (FUNC1(data))
		return FUNC2(data);

	return FUNC4(buf, "%d\n", FUNC0(data->fan_cmd1));
}