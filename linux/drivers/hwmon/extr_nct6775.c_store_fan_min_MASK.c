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
struct sensor_device_attribute {int index; } ;
struct nct6775_data {unsigned long* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_FAN_MIN; int /*<<< orphan*/  last_updated; int /*<<< orphan*/  (* fan_from_reg_min ) (int,int) ;int /*<<< orphan*/  has_fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nct6775_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nct6775_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nct6775_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 struct sensor_device_attribute* FUNC12 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC13(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC1(dev);
	struct sensor_device_attribute *sattr = FUNC12(attr);
	int nr = sattr->index;
	unsigned long val;
	unsigned int reg;
	u8 new_div;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC6(&data->update_lock);
	if (!data->has_fan_div) {
		/* NCT6776F or NCT6779D; we know this is a 13 bit register */
		if (!val) {
			val = 0xff1f;
		} else {
			if (val > 1350000U)
				val = 135000U;
			val = 1350000U / val;
			val = (val & 0x1f) | ((val << 3) & 0xff00);
		}
		data->fan_min[nr] = val;
		goto write_min;	/* Leave fan divider alone */
	}
	if (!val) {
		/* No min limit, alarm disabled */
		data->fan_min[nr] = 255;
		new_div = data->fan_div[nr]; /* No change */
		FUNC2(dev, "fan%u low limit and alarm disabled\n", nr + 1);
		goto write_div;
	}
	reg = 1350000U / val;
	if (reg >= 128 * 255) {
		/*
		 * Speed below this value cannot possibly be represented,
		 * even with the highest divider (128)
		 */
		data->fan_min[nr] = 254;
		new_div = 7; /* 128 == BIT(7) */
		FUNC3(dev,
			 "fan%u low limit %lu below minimum %u, set to minimum\n",
			 nr + 1, val, data->fan_from_reg_min(254, 7));
	} else if (!reg) {
		/*
		 * Speed above this value cannot possibly be represented,
		 * even with the lowest divider (1)
		 */
		data->fan_min[nr] = 1;
		new_div = 0; /* 1 == BIT(0) */
		FUNC3(dev,
			 "fan%u low limit %lu above maximum %u, set to maximum\n",
			 nr + 1, val, data->fan_from_reg_min(1, 0));
	} else {
		/*
		 * Automatically pick the best divider, i.e. the one such
		 * that the min limit will correspond to a register value
		 * in the 96..192 range
		 */
		new_div = 0;
		while (reg > 192 && new_div < 7) {
			reg >>= 1;
			new_div++;
		}
		data->fan_min[nr] = reg;
	}

write_div:
	/*
	 * Write both the fan clock divider (if it changed) and the new
	 * fan min (unconditionally)
	 */
	if (new_div != data->fan_div[nr]) {
		FUNC0(dev, "fan%u clock divider changed from %u to %u\n",
			nr + 1, FUNC4(data->fan_div[nr]),
			FUNC4(new_div));
		data->fan_div[nr] = new_div;
		FUNC8(data, nr);
		/* Give the chip time to sample a new speed value */
		data->last_updated = jiffies;
	}

write_min:
	FUNC9(data, data->REG_FAN_MIN[nr], data->fan_min[nr]);
	FUNC7(&data->update_lock);

	return count;
}