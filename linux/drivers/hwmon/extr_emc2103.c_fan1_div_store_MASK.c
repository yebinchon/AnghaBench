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
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct emc2103_data {int fan_multiplier; int fan_target; int valid; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_FAN_CONF1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct emc2103_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,int,long*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *da,
			      const char *buf, size_t count)
{
	struct emc2103_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int new_range_bits, old_div = 8 / data->fan_multiplier;
	long new_div;

	int status = FUNC4(buf, 10, &new_div);
	if (status < 0)
		return status;

	if (new_div == old_div) /* No change */
		return count;

	switch (new_div) {
	case 1:
		new_range_bits = 3;
		break;
	case 2:
		new_range_bits = 2;
		break;
	case 4:
		new_range_bits = 1;
		break;
	case 8:
		new_range_bits = 0;
		break;
	default:
		return -EINVAL;
	}

	FUNC6(&data->update_lock);

	status = FUNC2(client, REG_FAN_CONF1);
	if (status < 0) {
		FUNC0(&client->dev, "reg 0x%02x, err %d\n",
			REG_FAN_CONF1, status);
		FUNC7(&data->update_lock);
		return status;
	}
	status &= 0x9F;
	status |= (new_range_bits << 5);
	FUNC3(client, REG_FAN_CONF1, status);

	data->fan_multiplier = 8 / new_div;

	/* update fan target if high byte is not disabled */
	if ((data->fan_target & 0x1fe0) != 0x1fe0) {
		u16 new_target = (data->fan_target * old_div) / new_div;
		data->fan_target = FUNC5(new_target, (u16)0x1fff);
		FUNC8(client, data->fan_target);
	}

	/* invalidate data to force re-read from hardware */
	data->valid = false;

	FUNC7(&data->update_lock);
	return count;
}