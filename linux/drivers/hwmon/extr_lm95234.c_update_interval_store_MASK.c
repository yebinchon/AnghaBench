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
typedef  int u8 ;
struct lm95234_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; int /*<<< orphan*/  interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM95234_REG_CONVRATE ; 
 struct lm95234_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (struct lm95234_data*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long* update_intervals ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct lm95234_data *data = FUNC0(dev);
	int ret = FUNC3(data);
	unsigned long val;
	u8 regval;

	if (ret)
		return ret;

	ret = FUNC2(buf, 10, &val);
	if (ret < 0)
		return ret;

	for (regval = 0; regval < 3; regval++) {
		if (val <= update_intervals[regval])
			break;
	}

	FUNC5(&data->update_lock);
	data->interval = FUNC4(update_intervals[regval]);
	FUNC1(data->client, LM95234_REG_CONVRATE, regval);
	FUNC6(&data->update_lock);

	return count;
}