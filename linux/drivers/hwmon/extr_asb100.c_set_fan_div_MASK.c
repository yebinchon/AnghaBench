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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asb100_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ASB100_REG_PIN ; 
 int /*<<< orphan*/  ASB100_REG_VID_FANDIV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct asb100_data* FUNC7 (struct i2c_client*) ; 
 int FUNC8 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC11 (struct device*) ; 
 TYPE_1__* FUNC12 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC12(attr)->index;
	struct i2c_client *client = FUNC11(dev);
	struct asb100_data *data = FUNC7(client);
	unsigned long min;
	int reg;
	unsigned long val;
	int err;

	err = FUNC8(buf, 10, &val);
	if (err)
		return err;

	FUNC9(&data->update_lock);

	min = FUNC3(data->fan_min[nr],
			FUNC1(data->fan_div[nr]));
	data->fan_div[nr] = FUNC2(val);

	switch (nr) {
	case 0:	/* fan 1 */
		reg = FUNC5(client, ASB100_REG_VID_FANDIV);
		reg = (reg & 0xcf) | (data->fan_div[0] << 4);
		FUNC6(client, ASB100_REG_VID_FANDIV, reg);
		break;

	case 1:	/* fan 2 */
		reg = FUNC5(client, ASB100_REG_VID_FANDIV);
		reg = (reg & 0x3f) | (data->fan_div[1] << 6);
		FUNC6(client, ASB100_REG_VID_FANDIV, reg);
		break;

	case 2:	/* fan 3 */
		reg = FUNC5(client, ASB100_REG_PIN);
		reg = (reg & 0x3f) | (data->fan_div[2] << 6);
		FUNC6(client, ASB100_REG_PIN, reg);
		break;
	}

	data->fan_min[nr] =
		FUNC4(min, FUNC1(data->fan_div[nr]));
	FUNC6(client, FUNC0(nr), data->fan_min[nr]);

	FUNC10(&data->update_lock);

	return count;
}