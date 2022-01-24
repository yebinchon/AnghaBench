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
typedef  int u8 ;
struct tmp401_data {int config; int temp_crit_hyst; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; int /*<<< orphan*/ ** temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (struct tmp401_data*) ; 
 size_t FUNC1 (struct tmp401_data*) ; 
 int TMP401_CONFIG_RANGE ; 
 int /*<<< orphan*/  TMP401_TEMP_CRIT_HYST ; 
 long FUNC2 (long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct tmp401_data* FUNC8 (struct device*) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				    struct device_attribute *devattr,
				    const char *buf, size_t count)
{
	int temp, index = FUNC9(devattr)->index;
	struct tmp401_data *data = FUNC8(dev);
	long val;
	u8 reg;

	if (FUNC0(data))
		return FUNC1(data);

	if (FUNC4(buf, 10, &val))
		return -EINVAL;

	if (data->config & TMP401_CONFIG_RANGE)
		val = FUNC2(val, -64000, 191000);
	else
		val = FUNC2(val, 0, 127000);

	FUNC5(&data->update_lock);
	temp = FUNC7(data->temp[3][index], data->config);
	val = FUNC2(val, temp - 255000, temp);
	reg = ((temp - val) + 500) / 1000;

	FUNC3(data->client, TMP401_TEMP_CRIT_HYST,
				  reg);

	data->temp_crit_hyst = reg;

	FUNC6(&data->update_lock);

	return count;
}