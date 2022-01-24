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
struct lm95234_data {long* tcrit1; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lm95234_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int FUNC5 (char const*,int,long*) ; 
 int FUNC6 (struct lm95234_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct lm95234_data *data = FUNC3(dev);
	int index = FUNC9(attr)->index;
	int ret = FUNC6(data);
	long val;

	if (ret)
		return ret;

	ret = FUNC5(buf, 10, &val);
	if (ret < 0)
		return ret;

	val = FUNC2(FUNC0(val, 1000), 0, 255);

	FUNC7(&data->update_lock);
	data->tcrit1[index] = val;
	FUNC4(data->client, FUNC1(index), val);
	FUNC8(&data->update_lock);

	return count;
}