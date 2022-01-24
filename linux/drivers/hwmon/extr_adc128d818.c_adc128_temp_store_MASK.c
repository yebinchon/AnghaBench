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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adc128_data {int* temp; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;
typedef  int s8 ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC128_REG_TEMP_HYST ; 
 int /*<<< orphan*/  ADC128_REG_TEMP_MAX ; 
 int /*<<< orphan*/  FUNC0 (long,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct adc128_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct adc128_data *data = FUNC2(dev);
	int index = FUNC7(attr)->index;
	long val;
	int err;
	s8 regval;

	err = FUNC4(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC5(&data->update_lock);
	regval = FUNC1(FUNC0(val, 1000), -128, 127);
	data->temp[index] = regval << 1;
	FUNC3(data->client,
				  index == 1 ? ADC128_REG_TEMP_MAX
					     : ADC128_REG_TEMP_HYST,
				  regval);
	FUNC6(&data->update_lock);

	return count;
}