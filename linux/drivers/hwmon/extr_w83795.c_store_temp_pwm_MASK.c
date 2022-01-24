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
struct w83795_data {unsigned long** pwm_temp; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
#define  TEMP_PWM_CTFS 131 
#define  TEMP_PWM_HCT 130 
#define  TEMP_PWM_HOT 129 
#define  TEMP_PWM_TTTI 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct w83795_data* FUNC4 (struct i2c_client*) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
	  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct w83795_data *data = FUNC4(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC9(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	unsigned long val;
	u8 tmp;

	if (FUNC5(buf, 10, &val) < 0)
		return -EINVAL;
	val /= 1000;

	FUNC6(&data->update_lock);
	switch (nr) {
	case TEMP_PWM_TTTI:
		val = FUNC3(val, 0, 0x7f);
		FUNC11(client, FUNC2(index), val);
		break;
	case TEMP_PWM_CTFS:
		val = FUNC3(val, 0, 0x7f);
		FUNC11(client, FUNC0(index), val);
		break;
	case TEMP_PWM_HCT:
		val = FUNC3(val, 0, 0x0f);
		tmp = FUNC10(client, FUNC1(index));
		tmp &= 0x0f;
		tmp |= (val << 4) & 0xf0;
		FUNC11(client, FUNC1(index), tmp);
		break;
	case TEMP_PWM_HOT:
		val = FUNC3(val, 0, 0x0f);
		tmp = FUNC10(client, FUNC1(index));
		tmp &= 0xf0;
		tmp |= val & 0x0f;
		FUNC11(client, FUNC1(index), tmp);
		break;
	}
	data->pwm_temp[index][nr] = val;
	FUNC7(&data->update_lock);

	return count;
}