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
struct lm95234_data {long thyst; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; scalar_t__* tcrit1; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int /*<<< orphan*/  LM95234_REG_TCRIT_HYST ; 
 long FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 struct lm95234_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int FUNC4 (char const*,int,long*) ; 
 int FUNC5 (struct lm95234_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct lm95234_data *data = FUNC2(dev);
	int index = FUNC8(attr)->index;
	int ret = FUNC5(data);
	long val;

	if (ret)
		return ret;

	ret = FUNC4(buf, 10, &val);
	if (ret < 0)
		return ret;

	val = FUNC0(val, 1000);
	val = FUNC1((int)data->tcrit1[index] - val, 0, 31);

	FUNC6(&data->update_lock);
	data->thyst = val;
	FUNC3(data->client, LM95234_REG_TCRIT_HYST, val);
	FUNC7(&data->update_lock);

	return count;
}