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
struct max6697_data {long temp_offset; scalar_t__ type; long** temp; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int nr; int index; } ;

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int /*<<< orphan*/ * MAX6697_REG_CRIT ; 
 int /*<<< orphan*/ * MAX6697_REG_MAX ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 struct max6697_data* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int FUNC4 (char const*,int,long*) ; 
 scalar_t__ max6581 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			  struct device_attribute *devattr, const char *buf,
			  size_t count)
{
	int nr = FUNC7(devattr)->nr;
	int index = FUNC7(devattr)->index;
	struct max6697_data *data = FUNC2(dev);
	long temp;
	int ret;

	ret = FUNC4(buf, 10, &temp);
	if (ret < 0)
		return ret;

	FUNC5(&data->update_lock);
	temp = FUNC0(temp, 1000) + data->temp_offset;
	temp = FUNC1(temp, 0, data->type == max6581 ? 255 : 127);
	data->temp[nr][index] = temp;
	ret = FUNC3(data->client,
					index == 2 ? MAX6697_REG_MAX[nr]
						   : MAX6697_REG_CRIT[nr],
					temp);
	FUNC6(&data->update_lock);

	return ret < 0 ? ret : count;
}