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
struct w83791d_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t EINVAL ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * W83791D_REG_FAN_DIV ; 
 int /*<<< orphan*/ * W83791D_REG_FAN_MIN ; 
 int /*<<< orphan*/  W83791D_REG_VBAT ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (int,unsigned long) ; 
 int FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 struct w83791d_data* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 struct sensor_device_attribute* FUNC10 (struct device_attribute*) ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev, struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC10(attr);
	struct i2c_client *client = FUNC9(dev);
	struct w83791d_data *data = FUNC5(client);
	int nr = sensor_attr->index;
	unsigned long min;
	u8 tmp_fan_div;
	u8 fan_div_reg;
	u8 vbat_reg;
	int indx = 0;
	u8 keep_mask = 0;
	u8 new_shift = 0;
	unsigned long val;
	int err;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	/* Save fan_min */
	min = FUNC1(data->fan_min[nr], FUNC0(data->fan_div[nr]));

	FUNC7(&data->update_lock);
	data->fan_div[nr] = FUNC3(nr, val);

	switch (nr) {
	case 0:
		indx = 0;
		keep_mask = 0xcf;
		new_shift = 4;
		break;
	case 1:
		indx = 0;
		keep_mask = 0x3f;
		new_shift = 6;
		break;
	case 2:
		indx = 1;
		keep_mask = 0x3f;
		new_shift = 6;
		break;
	case 3:
		indx = 2;
		keep_mask = 0xf8;
		new_shift = 0;
		break;
	case 4:
		indx = 2;
		keep_mask = 0x8f;
		new_shift = 4;
		break;
#ifdef DEBUG
	default:
		dev_warn(dev, "store_fan_div: Unexpected nr seen: %d\n", nr);
		count = -EINVAL;
		goto err_exit;
#endif
	}

	fan_div_reg = FUNC11(client, W83791D_REG_FAN_DIV[indx])
			& keep_mask;
	tmp_fan_div = (data->fan_div[nr] << new_shift) & ~keep_mask;

	FUNC12(client, W83791D_REG_FAN_DIV[indx],
				fan_div_reg | tmp_fan_div);

	/* Bit 2 of fans 0-2 is stored in the vbat register (bits 5-7) */
	if (nr < 3) {
		keep_mask = ~(1 << (nr + 5));
		vbat_reg = FUNC11(client, W83791D_REG_VBAT)
				& keep_mask;
		tmp_fan_div = (data->fan_div[nr] << (3 + nr)) & ~keep_mask;
		FUNC12(client, W83791D_REG_VBAT,
				vbat_reg | tmp_fan_div);
	}

	/* Restore fan_min */
	data->fan_min[nr] = FUNC4(min, FUNC0(data->fan_div[nr]));
	FUNC12(client, W83791D_REG_FAN_MIN[nr], data->fan_min[nr]);

#ifdef DEBUG
err_exit:
#endif
	FUNC8(&data->update_lock);

	return count;
}