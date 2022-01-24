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
typedef  int /*<<< orphan*/  u16 ;
struct ina209_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  update_interval; int /*<<< orphan*/ * regs; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 size_t INA209_CONFIGURATION ; 
 scalar_t__ FUNC0 (struct ina209_data*) ; 
 int FUNC1 (struct ina209_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long) ; 
 struct ina209_data* FUNC5 (struct device*) ; 
 int FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				     struct device_attribute *da,
				     const char *buf, size_t count)
{
	struct ina209_data *data = FUNC5(dev);
	long val;
	u16 regval;
	int ret;

	if (FUNC0(data))
		return FUNC1(data);

	ret = FUNC6(buf, 10, &val);
	if (ret < 0)
		return ret;

	FUNC7(&data->update_lock);
	regval = FUNC4(data->regs[INA209_CONFIGURATION],
					  val);
	FUNC2(data->client, INA209_CONFIGURATION,
				     regval);
	data->regs[INA209_CONFIGURATION] = regval;
	data->update_interval = FUNC3(regval);
	FUNC8(&data->update_lock);
	return count;
}