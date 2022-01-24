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
struct tmp401_data {int temp_crit_hyst; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  config; int /*<<< orphan*/ ** temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tmp401_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmp401_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tmp401_data* FUNC6 (struct device*) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				   struct device_attribute *devattr,
				   char *buf)
{
	int temp, index = FUNC7(devattr)->index;
	struct tmp401_data *data = FUNC6(dev);

	if (FUNC0(data))
		return FUNC1(data);

	FUNC2(&data->update_lock);
	temp = FUNC5(data->temp[3][index], data->config);
	temp -= data->temp_crit_hyst * 1000;
	FUNC3(&data->update_lock);

	return FUNC4(buf, "%d\n", temp);
}