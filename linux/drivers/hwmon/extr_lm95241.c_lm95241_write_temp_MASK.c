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
typedef  int u32 ;
struct lm95241_data {int config; int trutherm; int model; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  valid; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LM95241_REG_RW_CONFIG ; 
 int /*<<< orphan*/  LM95241_REG_RW_REMOTE_MODEL ; 
 int /*<<< orphan*/  LM95241_REG_RW_TRUTHERM ; 
 int R1DF_MASK ; 
 int R1MS_MASK ; 
 int R2DF_MASK ; 
 int R2MS_MASK ; 
 int TT1_SHIFT ; 
 int TT2_SHIFT ; 
 int TT_MASK ; 
 int TT_OFF ; 
 int TT_ON ; 
 struct lm95241_data* FUNC0 (struct device*) ; 
#define  hwmon_temp_max 130 
#define  hwmon_temp_min 129 
#define  hwmon_temp_type 128 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct lm95241_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	int ret;

	FUNC2(&data->update_lock);

	switch (attr) {
	case hwmon_temp_min:
		if (channel == 1) {
			if (val < 0)
				data->config |= R1DF_MASK;
			else
				data->config &= ~R1DF_MASK;
		} else {
			if (val < 0)
				data->config |= R2DF_MASK;
			else
				data->config &= ~R2DF_MASK;
		}
		data->valid = 0;
		ret = FUNC1(client, LM95241_REG_RW_CONFIG,
						data->config);
		break;
	case hwmon_temp_max:
		if (channel == 1) {
			if (val <= 127875)
				data->config |= R1DF_MASK;
			else
				data->config &= ~R1DF_MASK;
		} else {
			if (val <= 127875)
				data->config |= R2DF_MASK;
			else
				data->config &= ~R2DF_MASK;
		}
		data->valid = 0;
		ret = FUNC1(client, LM95241_REG_RW_CONFIG,
						data->config);
		break;
	case hwmon_temp_type:
		if (val != 1 && val != 2) {
			ret = -EINVAL;
			break;
		}
		if (channel == 1) {
			data->trutherm &= ~(TT_MASK << TT1_SHIFT);
			if (val == 1) {
				data->model |= R1MS_MASK;
				data->trutherm |= (TT_ON << TT1_SHIFT);
			} else {
				data->model &= ~R1MS_MASK;
				data->trutherm |= (TT_OFF << TT1_SHIFT);
			}
		} else {
			data->trutherm &= ~(TT_MASK << TT2_SHIFT);
			if (val == 1) {
				data->model |= R2MS_MASK;
				data->trutherm |= (TT_ON << TT2_SHIFT);
			} else {
				data->model &= ~R2MS_MASK;
				data->trutherm |= (TT_OFF << TT2_SHIFT);
			}
		}
		ret = FUNC1(client,
						LM95241_REG_RW_REMOTE_MODEL,
						data->model);
		if (ret < 0)
			break;
		ret = FUNC1(client, LM95241_REG_RW_TRUTHERM,
						data->trutherm);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}

	FUNC3(&data->update_lock);

	return ret;
}